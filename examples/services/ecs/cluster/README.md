<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.64.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cluster"></a> [cluster](#module\_cluster) | ../../../../modules/services/ecs/cluster | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_created-by"></a> [created-by](#input\_created-by) | n/a | `string` | `"Terraform"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"dev"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | n/a | `string` | `"Terraform"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | `"Jesse Gersenson"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"eu-west-2"` | no |
| <a name="input_service"></a> [service](#input\_service) | variable "capacity-providers" { type    = list(string) default = ["FARGATE", "FARGATE\_SPOT"] }  variable "default-capacity-provider" { type    = string default = "FARGATE\_SPOT" }  variable "logging" { type    = string default = "DEFAULT" # NONE DEFAULT OVERRIDE }  variable "service-discovery-namespace-arn" { type    = string default = "development" } | `string` | `"my-service"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster-name"></a> [cluster-name](#output\_cluster-name) | n/a |
| <a name="output_environment"></a> [environment](#output\_environment) | n/a |
| <a name="output_managed_by"></a> [managed\_by](#output\_managed\_by) | n/a |
| <a name="output_output"></a> [output](#output\_output) | n/a |
| <a name="output_owner"></a> [owner](#output\_owner) | n/a |
| <a name="output_service"></a> [service](#output\_service) | n/a |
| <a name="output_tags"></a> [tags](#output\_tags) | n/a |
<!-- END_TF_DOCS -->