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
func TestUnitEcr(t *testing.T) {
	t.Parallel()

	// A unique ID we can use to namespace all our resource names and ensure they don't clash across parallel tests
	uniqueId := strings.ToLower(random.UniqueId())

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../examples/services/ecr",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"name":                 fmt.Sprintf("ecr-%s", uniqueId),
			"region":               "eu-west-2",
			"force_delete":         true,
			"image_tag_mutability": "MUTABLE",
			"encryption_type":      "AES256",
			"scan_on_push":         false,
			"environment":          "friendly",
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Check that the app is working as expected
	validateEcr(t, terraformOptions)
}

func validateEcr(t *testing.T, terraformOptions *terraform.Options) {
	// Run `terraform output` to get the values of output variables
	url := terraform.Output(t, terraformOptions, "url")
	name := terraform.Output(t, terraformOptions, "name")
	force_delete := terraform.Output(t, terraformOptions, "force_delete")
	image_tag_mutability := terraform.Output(t, terraformOptions, "image_tag_mutability")
	encryption_type := terraform.Output(t, terraformOptions, "encryption_type")
	scan_on_push := terraform.Output(t, terraformOptions, "scan_on_push")
	environment := terraform.Output(t, terraformOptions, "environment")

	utils.AssertEqual(t, "force_delete", force_delete, "true")
	utils.AssertEqual(t, "encryption_type", encryption_type, "AES256")
	utils.AssertEqual(t, "scan_on_push", scan_on_push, "false")
	utils.AssertEqual(t, "environment", environment, "friendly")
	utils.AssertEqual(t, "image_tag_mutability", image_tag_mutability, "MUTABLE")

	utils.AssertContains(t, "url", url, "eu-west-2")
	utils.AssertContains(t, "url_name", url, name)

}
