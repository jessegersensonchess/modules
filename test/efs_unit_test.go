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
func TestUnitEfs(t *testing.T) {
	t.Parallel()

	// A unique ID we can use to namespace all our resource names and ensure they don't clash across parallel tests
	uniqueId := strings.ToLower(random.UniqueId())

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../examples/data-stores/efs/file_system",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"owner":   "terratest",
			"service": fmt.Sprintf("myservice-%s", uniqueId),
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Check that the app is working as expected
	validateEfs(t, terraformOptions, uniqueId)
}

// Validate the "Hello, World" app is working
func validateEfs(t *testing.T, terraformOptions *terraform.Options, uniqueId string) {
	// Run `terraform output` to get the values of output variables
	encrypted := terraform.Output(t, terraformOptions, "encrypted")
	output := terraform.Output(t, terraformOptions, "output")
	//	output = strings.ToLower(output)
	if encrypted == "true" {
		fmt.Sprintf("SUCCESS: encrypted = %v, output = %v, uniqueId = %v\n", encrypted, output, uniqueId)
		t.Logf("Success ")
	} else {
		fmt.Println("------------------- no ----------------")
		t.Errorf("Failed ! got output = %v", output)

	}

	// Verify the app returns a 200 OK with the text "Hello, World!"
	//	expectedStatus := 200
	//	expectedBody := "Hello, World!"
	//	maxRetries := 10
	//	timeBetweenRetries := 3 * time.Second
	//	http_helper.HttpGetWithRetry(t, url, nil, expectedStatus, expectedBody, maxRetries, timeBetweenRetries)
}
