package test

import (
	"fmt"
	"math/rand"
	"strconv"
	"strings"
	"terratests/utils"
	"testing"
	"time"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

// An example of a unit test for the Terraform module in examples/ecr
func TestUnitVpc(t *testing.T) {
	t.Parallel()

	// A unique ID we can use to namespace all our resource names and ensure they don't clash across parallel tests
	uniqueId := strings.ToLower(random.UniqueId())

	rand.Seed(time.Now().UnixNano())
	uniqueInt := rand.Intn(150) + 100

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../examples/network/vpc",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"base_subnet":      fmt.Sprintf("10.%s", strconv.Itoa(uniqueInt)),
			"region":           "eu-west-2",
			"network_basename": fmt.Sprintf("mynetwork-%s", uniqueId),
			"environment":      "myenv",
			//"enable_dns_hostnames":                 "true",
			//"enable_dns_support":                   "true",
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
	//enable_dns_support := terraform.Output(t, terraformOptions, "enable_dns_support")
	//enable_dns_hostnames := terraform.Output(t, terraformOptions, "enable_dns_hostnames")
	environment := terraform.Output(t, terraformOptions, "environment")
	name := terraform.Output(t, terraformOptions, "name")
	managed_by := terraform.Output(t, terraformOptions, "managed_by")

	utils.AssertContains(t, "base_subnet", base_subnet, "10.")
	utils.AssertContains(t, "name", name, "mynetwork")
	utils.AssertEqual(t, "enable_network_address_usage_metrics", enable_network_address_usage_metrics, "true")
	utils.AssertEqual(t, "environment", environment, "myenv")
	utils.AssertEqual(t, "managed_by", managed_by, "terratest")
	utils.AssertEqual(t, "vpc_id_length", strconv.FormatBool(len(vpc_id) > 0), "true")

}
