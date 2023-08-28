package test

import (
	"fmt"
	"strings"
	"terratests/utils"
	"testing"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
	// "github.com/gruntwork-io/terratest/modules/testing"
)

// An example of a unit test for the Terraform module in examples/ecr
func TestUnitAlb(t *testing.T) {
	t.Parallel()

	// A unique ID we can use to namespace all our resource names and ensure they don't clash across parallel tests
	uniqueId := strings.ToLower(random.UniqueId())

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../examples/network/load-balancers/alb",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"service":                    fmt.Sprintf("myservice-%s", uniqueId),
			"owner":                      "king",
			"region":                     "eu-west-2",
			"managed_by":                 "terratest",
			"environment":                "friendly",
			"drop_invalid_header_fields": "true",
			"preserve_host_header":       "true",
			"ip_address_type":            "ipv4",
			"lb_idle_timeout":            "44",
			"enable_http2":               "false",
			"enable_deletion_protection": "false",
			"load_balancer_type":         "application",
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Check that the app is working as expected
	validateAlb(t, terraformOptions, uniqueId)
}

// Validate the "Hello, World" app is working
func validateAlb(t *testing.T, terraformOptions *terraform.Options, uniqueId string) {
	// Run `terraform output` to get the values of output variables
	dns_name := terraform.Output(t, terraformOptions, "dns_name")
	region := terraform.Output(t, terraformOptions, "region")
	arn := terraform.Output(t, terraformOptions, "arn")
	service := terraform.Output(t, terraformOptions, "service")
	owner := terraform.Output(t, terraformOptions, "owner")
	managed_by := terraform.Output(t, terraformOptions, "managed_by")
	environment := terraform.Output(t, terraformOptions, "environment")
	drop_invalid_header_fields := terraform.Output(t, terraformOptions, "drop_invalid_header_fields")
	preserve_host_header := terraform.Output(t, terraformOptions, "preserve_host_header")
	ip_address_type := terraform.Output(t, terraformOptions, "ip_address_type")
	idle_timeout := terraform.Output(t, terraformOptions, "idle_timeout")
	enable_http2 := terraform.Output(t, terraformOptions, "enable_http2")
	enable_deletion_protection := terraform.Output(t, terraformOptions, "enable_deletion_protection")
	load_balancer_type := terraform.Output(t, terraformOptions, "load_balancer_type")

	dns_name = strings.ToLower(dns_name)

	utils.AssertContains(t, "dns_name", dns_name, uniqueId)
	utils.AssertEqual(t, "environment", environment, "friendly")
	utils.AssertEqual(t, "drop_invalid_header_fields", drop_invalid_header_fields, "true")

	utils.AssertEqual(t, "load_balancer_type", load_balancer_type, "application")
	utils.AssertEqual(t, "enable_deletion_protection", enable_deletion_protection, "false")
	utils.AssertEqual(t, "enable_http2", enable_http2, "true")
	utils.AssertEqual(t, "owner", owner, "king")
	utils.AssertEqual(t, "idle_timeout", idle_timeout, "44")
	utils.AssertEqual(t, "managed_by", managed_by, "terratest")
	utils.AssertEqual(t, "ip_address_type", ip_address_type, "ipv4")
	utils.AssertEqual(t, "preserve_host_header", preserve_host_header, "true")

	utils.AssertContains(t, "service", service, uniqueId)
	utils.AssertContains(t, "arn_region", arn, region)

}
