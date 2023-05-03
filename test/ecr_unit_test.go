package test

import (
	"fmt"
	"strings"
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

// Validate the "Hello, World" app is working
func validateEcr(t *testing.T, terraformOptions *terraform.Options) {
	// Run `terraform output` to get the values of output variables
	url := terraform.Output(t, terraformOptions, "url")
	name := terraform.Output(t, terraformOptions, "name")
	force_delete := terraform.Output(t, terraformOptions, "force_delete")
	image_tag_mutability := terraform.Output(t, terraformOptions, "image_tag_mutability")
	encryption_type := terraform.Output(t, terraformOptions, "encryption_type")
	scan_on_push := terraform.Output(t, terraformOptions, "scan_on_push")
	environment := terraform.Output(t, terraformOptions, "environment")

	if force_delete != "true" {
		t.Errorf("ERROR: expected force_delete=true, got %v", force_delete)
	}

	if !strings.Contains(url, "eu-west-2") {
		t.Errorf("ERROR: expected region=eu-west-2, got %v", url)
	}

	if encryption_type != "AES256" {
		t.Errorf("ERROR: expected encryption_type=AES256, got %v", encryption_type)
	}

	if scan_on_push != "false" {
		t.Errorf("ERROR: expected scan_on_push=false, got %v", scan_on_push)
	}

	if environment != "friendly" {
		t.Errorf("ERROR: expected environment=friendly, got %v", environment)
	}

	if image_tag_mutability != "MUTABLE" {
		t.Errorf("ERROR: expected image_tag_mutability=MUTABLE, got %v", image_tag_mutability)
	}

	if !strings.Contains(url, name) {
		t.Errorf("ERROR: expected url to contain name, got url=%v, name=%v", url, name)
	}
}
