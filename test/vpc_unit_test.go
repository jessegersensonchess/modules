package test

import (
	"fmt"
	"strings"
	"testing"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

// An example of a unit test for the Terraform module in examples/ecr
func TestUnitVpc(t *testing.T) {
	t.Parallel()

	// A unique ID we can use to namespace all our resource names and ensure they don't clash across parallel tests
	uniqueId := strings.ToLower(random.UniqueId())

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../examples/network/vpc",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"base_subnet":                          "10.88",
			"region":                               "eu-west-2",
			"network_basename":                     fmt.Sprintf("mynetwork-%s", uniqueId),
			"environment":                          "myenv",
			"enable_dns_hostnames":                 "true",
			"enable_dns_support":                   "true",
			"enable_network_address_usage_metrics": "true",
			"managed_by":                           "terratest",
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Check that the app is working as expected
	validateVpc(t, terraformOptions)
}

// Validate the "Hello, World" app is working
func validateVpc(t *testing.T, terraformOptions *terraform.Options) {
	// Run `terraform output` to get the values of output variables

	// sample test.
	// todo:
	// 1. add generic output to module
	// 2. add tests for each piece of output

	// EXAMPLE
	//	if image_tag_mutability != "MUTABLE" {
	//		t.Errorf("ERROR: expected image_tag_mutability=MUTABLE, got %v", image_tag_mutability)
	//	}
	vpc_id := terraform.Output(t, terraformOptions, "vpc_id")
	base_subnet := terraform.Output(t, terraformOptions, "cidr_block")
	enable_network_address_usage_metrics := terraform.Output(t, terraformOptions, "enable_network_address_usage_metrics")
	enable_dns_support := terraform.Output(t, terraformOptions, "enable_dns_support")
	enable_dns_hostnames := terraform.Output(t, terraformOptions, "enable_dns_hostnames")
	environment := terraform.Output(t, terraformOptions, "environment")
	name := terraform.Output(t, terraformOptions, "name")
	managed_by := terraform.Output(t, terraformOptions, "managed_by")

	if !strings.Contains(base_subnet, "10.88") {
		t.Errorf("ERROR: expected base_subnet=10.88, got %v", base_subnet)
	}

	if enable_network_address_usage_metrics != "true" {
		t.Errorf("ERROR: expected enable_network_address_usage_metrics=true, got %v", enable_network_address_usage_metrics)
	}
	if enable_dns_support != "true" {
		t.Errorf("ERROR: expected enable_dns_support=true, got %v", enable_dns_support)
	}

	if enable_dns_hostnames != "true" {
		t.Errorf("ERROR: expected enable_dns_hostnames=true, got %v", enable_dns_hostnames)
	}

	if environment != "myenv" {
		t.Errorf("ERROR: expected environment=myenv, got %v", environment)
	}

	if managed_by != "terratest" {
		t.Errorf("ERROR: expected managed_by=terratest, got %v", managed_by)
	}

	if !strings.Contains(name, "mynetwork") {
		t.Errorf("ERROR: expected name=mynetwork-*, got %v", name)
	}

	if !(len(vpc_id) > 0) {
		t.Errorf("ERROR: expected len(vpc_id) > 0, got %v (%v)", len(vpc_id), vpc_id)
	}

}
