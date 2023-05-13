<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_efs"></a> [efs](#module\_efs) | ../../data-stores/efs/file_system | n/a |
| <a name="module_efs-access_point-bin"></a> [efs-access\_point-bin](#module\_efs-access\_point-bin) | ../../../../modules/data-stores/efs/access_point | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity-providers"></a> [capacity-providers](#input\_capacity-providers) | n/a | `list(string)` | <pre>[<br>  "FARGATE",<br>  "FARGATE_SPOT"<br>]</pre> | no |
| <a name="input_cluster-name"></a> [cluster-name](#input\_cluster-name) | n/a | `string` | `"my-cluster-name"` | no |
| <a name="input_containerInsights-value"></a> [containerInsights-value](#input\_containerInsights-value) | n/a | `string` | `"disabled"` | no |
| <a name="input_created-by"></a> [created-by](#input\_created-by) | n/a | `string` | `"Terraform"` | no |
| <a name="input_default-capacity-provider"></a> [default-capacity-provider](#input\_default-capacity-provider) | n/a | `string` | `"FARGATE_SPOT"` | no |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | `"cluster description"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"dev"` | no |
| <a name="input_logging"></a> [logging](#input\_logging) | n/a | `string` | `"DEFAULT"` | no |
| <a name="input_managed-by"></a> [managed-by](#input\_managed-by) | n/a | `string` | `"Terraform"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | `"Jesse Gersenson"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"eu-west-2"` | no |
| <a name="input_service"></a> [service](#input\_service) | n/a | `string` | `"my-service"` | no |
| <a name="input_service-discovery-namespace-arn"></a> [service-discovery-namespace-arn](#input\_service-discovery-namespace-arn) | n/a | `string` | `"development"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_output"></a> [output](#output\_output) | n/a |
<!-- END_TF_DOCS -->