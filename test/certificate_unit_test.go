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
func TestUnitCertificate(t *testing.T) {
	t.Parallel()

	// A unique ID we can use to namespace all our resource names and ensure they don't clash across parallel tests
	uniqueId := strings.ToLower(random.UniqueId())

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../examples/management/certificates",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"service":           fmt.Sprintf("myservice-%s", uniqueId),
			"region":            "eu-west-2",
			"managed_by":        "terratest",
			"environment":       "friendly",
			"description":       "this is a description",
			"validation-method": "DNS",
			"domain-name":       fmt.Sprintf("terratest-%s.com", uniqueId),
			"key_algorithm":     "RSA_2048",
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Check that the app is working as expected
	validateCertificate(t, terraformOptions, uniqueId)
}

// Validate
func validateCertificate(t *testing.T, terraformOptions *terraform.Options, uniqueId string) {

	// Run `terraform output` to get the values of output variables
	region := terraform.Output(t, terraformOptions, "region")
	arn := terraform.Output(t, terraformOptions, "arn")
	ssl_certificate_domain_name := terraform.Output(t, terraformOptions, "ssl-certificate-domain-name")

	utils.AssertContains(t, "ssl_certificate_domain-name", ssl_certificate_domain_name, uniqueId)
	utils.AssertContains(t, "arn_and_region", arn, region)

	//	if !strings.Contains(ssl_certificate_domain_name, uniqueId) {
	//		t.Errorf("ERROR: expected ssl_certificate_domain_name to include uniqueId, got %v, %v", ssl_certificate_domain_name, uniqueId)
	//	}
	//
	//	if !strings.Contains(arn, region) {
	//		t.Errorf("ERROR: expected  arn to include region, got %v, %v", arn, region)
	//	}

}
