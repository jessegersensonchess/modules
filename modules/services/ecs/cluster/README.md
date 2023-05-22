<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.64.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.64.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecs_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_ecs_cluster_capacity_providers.capacity-providers](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers) | resource |
| [aws_service_discovery_http_namespace.namespace](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/service_discovery_http_namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity-providers"></a> [capacity-providers](#input\_capacity-providers) | Set of names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE\_SPOT | `list(string)` | <pre>[<br>  "FARGATE",<br>  "FARGATE_SPOT"<br>]</pre> | no |
| <a name="input_cluster-name"></a> [cluster-name](#input\_cluster-name) | Name of the cluster (up to 255 letters, numbers, hyphens, and underscores) | `string` | `"my-cluster-name"` | no |
| <a name="input_containerInsights-value"></a> [containerInsights-value](#input\_containerInsights-value) | The value to assign to the setting. Valid values are enabled and disabled. | `string` | `"disabled"` | no |
| <a name="input_created-by"></a> [created-by](#input\_created-by) | (optional) Entity which created the resource. Value appears as a tag with key Created\_By | `string` | `"Terraform"` | no |
| <a name="input_default-capacity-provider"></a> [default-capacity-provider](#input\_default-capacity-provider) | Name of the default capacity provider. | `string` | `"FARGATE_SPOT"` | no |
| <a name="input_description"></a> [description](#input\_description) | basic description of resource. Value appears as a meta tag with key Description | `string` | `"cluster description"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | (optional) Environment of the resource. Value appears as a tag with key Environment | `string` | `"dev"` | no |
| <a name="input_logging"></a> [logging](#input\_logging) | The log setting to use for redirecting logs for your execute command results. Valid values are NONE, DEFAULT, and OVERRIDE. | `string` | `"DEFAULT"` | no |
| <a name="input_managed-by"></a> [managed-by](#input\_managed-by) | (optional) Environment of the resource. Value appears as a tag with key Environment | `string` | `"Terraform"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | (optional) Owner of the resource. Value appears as a tag with key Owner | `string` | `"Jesse Gersenson"` | no |
| <a name="input_service"></a> [service](#input\_service) | (optional) Service which uses this resource. Value appears as a tag with key Service | `string` | `"my-service"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_namespace"></a> [namespace](#output\_namespace) | Name of the http namespace. |
| <a name="output_output"></a> [output](#output\_output) | output from aws\_ecs\_cluster |
<!-- END_TF_DOCS -->