# Terraform "Hello, World" Example

This folder contains the simplest possible Terraform module—one that just outputs "Hello, World"—to demonstrate how you 
can use Terratest to write automated tests for your Terraform code. 

Check out [test/terraform_hello_world_example_test.go](/test/terraform_hello_world_example_test.go) to see how you can 
write automated tests for this simple module.

Note that this module doesn't do anything useful; it's just here to demonstrate the simplest usage pattern for
Terratest. For a slightly more complicated example of a Terraform module and the corresponding tests, see
[terraform-basic-example](/examples/terraform-basic-example).




## Running this module manually

1. Install [Terraform](https://www.terraform.io/) and make sure it's on your `PATH`.
1. Run `terraform init`.
1. Run `terraform apply`.
1. When you're done, run `terraform destroy`.




## Running automated tests against this module

1. Install [Terraform](https://www.terraform.io/) and make sure it's on your `PATH`.
1. Install [Golang](https://golang.org/) and make sure this code is checked out into your `GOPATH`.
1. `cd test`
1. `go test -v -run TestTerraformHelloWorldExample`
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hello_world"></a> [hello\_world](#output\_hello\_world) | hello world description |
<!-- END_TF_DOCS -->