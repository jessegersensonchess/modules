<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

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
| <a name="input_service"></a> [service](#input\_service) | n/a | `string` | `"my-service"` | no |
| <a name="input_service-discovery-namespace-arn"></a> [service-discovery-namespace-arn](#input\_service-discovery-namespace-arn) | n/a | `string` | `"development"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_namespace"></a> [namespace](#output\_namespace) | n/a |
| <a name="output_output"></a> [output](#output\_output) | n/a |
<!-- END_TF_DOCS -->