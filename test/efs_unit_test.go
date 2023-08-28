package test

import (
	"fmt"
	"strings"
	"terratests/utils"
	"testing"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

// An example of a unit test for the Terraform module in examples/ecr
func TestUnitEfs(t *testing.T) {
	t.Parallel()

	// A unique ID we can use to namespace all our resource names and ensure they don't clash across parallel tests
	uniqueId := strings.ToLower(random.UniqueId())

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../examples/data-stores/efs/file_system",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"service":     fmt.Sprintf("myservice-%s", uniqueId),
			"environment": "friendly",
			"owner":       "king",
			"encrypted":   "false",
			"managed_by":  "TerraTest",
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Check that the app is working as expected
	validateEfs(t, terraformOptions, uniqueId)
}

// Validate
func validateEfs(t *testing.T, terraformOptions *terraform.Options, uniqueId string) {
	// Run `terraform output` to get the values of output variables
	encrypted := terraform.Output(t, terraformOptions, "encrypted")
	dns_name := terraform.Output(t, terraformOptions, "dns_name")
	owner := terraform.Output(t, terraformOptions, "owner")
	service := terraform.Output(t, terraformOptions, "service")
	environment := terraform.Output(t, terraformOptions, "environment")
	managed_by := terraform.Output(t, terraformOptions, "managed_by")
	fmt.Println("dns_name = ", dns_name)

	utils.AssertEqual(t, "managed_by", managed_by, "TerraTest")
	utils.AssertEqual(t, "owner", owner, "king")
	utils.AssertEqual(t, "environment", environment, "friendly")
	utils.AssertEqual(t, "encrypted", encrypted, "false")
	utils.AssertContains(t, "service", service, uniqueId)

}
