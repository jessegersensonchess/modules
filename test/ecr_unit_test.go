package test

import (
	"fmt"
	"strings"
	"testing"

	//	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/gruntwork-io/terratest/tree/master/modules/random"
)

// An example of a unit test for the Terraform module in examples/ecr
func TestEcrUnit(t *testing.T) {
	t.Parallel()

	// A unique ID we can use to namespace all our resource names and ensure they don't clash across parallel tests
	uniqueId := strings.ToLower(random.UniqueId())

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../examples/services/ecr",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"name": fmt.Sprintf("ecr-%s", uniqueId),
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Check that the app is working as expected
	validateEcr(t, terraformOptions)
}

// Validate the "Hello, World" app is working
func validateEcr(t *testing.T, terraformOptions *terraform.Options) {
	// Run `terraform output` to get the values of output variables
	url := terraform.Output(t, terraformOptions, "url")
	name := terraform.Output(t, terraformOptions, "name")
	if strings.Contains(url, name) {
		fmt.Println("\n\n\nyes, url contains name \n\n\n\n=========== ")
		fmt.Sprintf("url = %v, name = %v\n", url, name)
		t.Logf("Success !")
	} else {
		fmt.Println("------------------- no ----------------")
		t.Errorf("Failed ! got %v", url)

	}

	fmt.Println(url)
}
