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
| [aws_cloudwatch_log_group.log_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_ecs_task_definition.definition](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_point_id-bin"></a> [access\_point\_id-bin](#input\_access\_point\_id-bin) | n/a | `string` | `"my-access_point_id-bin"` | no |
| <a name="input_access_point_id-config"></a> [access\_point\_id-config](#input\_access\_point\_id-config) | n/a | `string` | `"my-access_point_id-config"` | no |
| <a name="input_access_point_id-logs"></a> [access\_point\_id-logs](#input\_access\_point\_id-logs) | n/a | `string` | `"my-access_point_id-logs"` | no |
| <a name="input_app"></a> [app](#input\_app) | n/a | `string` | `"my-app"` | no |
| <a name="input_awslogs-group"></a> [awslogs-group](#input\_awslogs-group) | n/a | `string` | `"my-awslogs-group"` | no |
| <a name="input_awslogs-region"></a> [awslogs-region](#input\_awslogs-region) | n/a | `string` | `"my-awslogs-region"` | no |
| <a name="input_awslogs-stream-prefix"></a> [awslogs-stream-prefix](#input\_awslogs-stream-prefix) | n/a | `string` | `"ecs"` | no |
| <a name="input_bin-containerPath"></a> [bin-containerPath](#input\_bin-containerPath) | n/a | `string` | `"/app/bin/cert"` | no |
| <a name="input_config-containerPath"></a> [config-containerPath](#input\_config-containerPath) | n/a | `string` | `"/app/config/local"` | no |
| <a name="input_containerPort"></a> [containerPort](#input\_containerPort) | n/a | `number` | `1` | no |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | n/a | `string` | `"CONTAINER-ENV-SERVICE"` | no |
| <a name="input_cpu"></a> [cpu](#input\_cpu) | n/a | `number` | `256` | no |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | `"my-description"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"dev"` | no |
| <a name="input_essential"></a> [essential](#input\_essential) | n/a | `bool` | `true` | no |
| <a name="input_execution_role_arn"></a> [execution\_role\_arn](#input\_execution\_role\_arn) | n/a | `string` | `"my-execution_role_arn"` | no |
| <a name="input_family"></a> [family](#input\_family) | n/a | `string` | `"TSK-my-family"` | no |
| <a name="input_file_system_id"></a> [file\_system\_id](#input\_file\_system\_id) | n/a | `string` | `"my-file_system_id"` | no |
| <a name="input_hostPort"></a> [hostPort](#input\_hostPort) | n/a | `number` | `1` | no |
| <a name="input_image"></a> [image](#input\_image) | n/a | `string` | `"my-image"` | no |
| <a name="input_logs-containerPath"></a> [logs-containerPath](#input\_logs-containerPath) | n/a | `string` | `"/app/logs"` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | n/a | `number` | `512` | no |
| <a name="input_name-bin"></a> [name-bin](#input\_name-bin) | n/a | `string` | `"bin"` | no |
| <a name="input_name-config"></a> [name-config](#input\_name-config) | n/a | `string` | `"config"` | no |
| <a name="input_name-logs"></a> [name-logs](#input\_name-logs) | n/a | `string` | `"logs"` | no |
| <a name="input_network_mode"></a> [network\_mode](#input\_network\_mode) | n/a | `string` | `"awsvpc"` | no |
| <a name="input_node_env"></a> [node\_env](#input\_node\_env) | n/a | `string` | `"my-node_env"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | `"my-owner"` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | n/a | `string` | `"tcp"` | no |
| <a name="input_readonlyRootFilesystem"></a> [readonlyRootFilesystem](#input\_readonlyRootFilesystem) | n/a | `bool` | `true` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"my-region"` | no |
| <a name="input_requires_compatibilities"></a> [requires\_compatibilities](#input\_requires\_compatibilities) | n/a | `list(string)` | <pre>[<br>  "FARGATE"<br>]</pre> | no |
| <a name="input_root_directory-bin"></a> [root\_directory-bin](#input\_root\_directory-bin) | n/a | `string` | `"/"` | no |
| <a name="input_root_directory-config"></a> [root\_directory-config](#input\_root\_directory-config) | n/a | `string` | `"/"` | no |
| <a name="input_root_directory-logs"></a> [root\_directory-logs](#input\_root\_directory-logs) | n/a | `string` | `"/"` | no |
| <a name="input_safe_to_delete"></a> [safe\_to\_delete](#input\_safe\_to\_delete) | n/a | `bool` | `false` | no |
| <a name="input_service"></a> [service](#input\_service) | n/a | `string` | `"my-service"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_name"></a> [container\_name](#output\_container\_name) | n/a |
| <a name="output_output"></a> [output](#output\_output) | n/a |
<!-- END_TF_DOCS -->