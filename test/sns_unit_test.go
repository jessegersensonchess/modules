package test

import (
	"fmt"
	"math/rand"
	"strings"
	"terratests/utils"
	"testing"
	"time"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
	// "github.com/gruntwork-io/terratest/modules/testing"
)

const (
	region = "eu-west-2"
)

// An example of a unit test for the Terraform module in examples/ecr
func TestUnitSns(t *testing.T) {
	t.Parallel()

	// A unique ID we can use to namespace all our resource names and ensure they don't clash across parallel tests
	uniqueId := strings.ToLower(random.UniqueId())

	rand.Seed(time.Now().UnixNano())

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../examples/services/sns",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			//"service":        fmt.Sprintf("myservice-%s", uniqueId),
			//"owner":          "king",
			//"managed_by":     "terratest",
			//"environment":    "friendly",
			"region":         region,
			"sns_topic_name": fmt.Sprintf("sns-topic-name-%s", uniqueId),
			"email_endpoint": "email@email.com",
			"sns_protocol":   "email",
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Check that the app is working as expected
	validateSns(t, terraformOptions, uniqueId)
}

func validateSns(t *testing.T, terraformOptions *terraform.Options, uniqueId string) {
	// Run `terraform output` to get the values of output variables
	sns_topic_arn := terraform.Output(t, terraformOptions, "sns_topic_arn")

	//	utils.AssertEqual(t, "environment", environment, "friendly")
	utils.AssertContains(t, "sns_topic_arn", sns_topic_arn, region)
	utils.AssertContains(t, "sns_topic_arn", sns_topic_arn, "sns-topic-name")

}
