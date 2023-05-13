<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecr"></a> [ecr](#module\_ecr) | ../../services/ecr | n/a |
| <a name="module_efs"></a> [efs](#module\_efs) | ../../data-stores/efs/file_system | n/a |
| <a name="module_efs-access_point-bin"></a> [efs-access\_point-bin](#module\_efs-access\_point-bin) | ../../data-stores/efs/access_point | n/a |
| <a name="module_efs-access_point-config"></a> [efs-access\_point-config](#module\_efs-access\_point-config) | ../../data-stores/efs/access_point | n/a |
| <a name="module_efs-access_point-logs"></a> [efs-access\_point-logs](#module\_efs-access\_point-logs) | ../../data-stores/efs/access_point | n/a |
| <a name="module_listener-rule"></a> [listener-rule](#module\_listener-rule) | ../../network/load-balancers/listener_rules | n/a |
| <a name="module_service"></a> [service](#module\_service) | ../../services/ecs/service | n/a |
| <a name="module_target-group"></a> [target-group](#module\_target-group) | ../../network/load-balancers/target_groups | n/a |
| <a name="module_task-definition"></a> [task-definition](#module\_task-definition) | ../../services/ecs/task_definition | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_ecr_image.image](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ecr_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bin-containerPath"></a> [bin-containerPath](#input\_bin-containerPath) | n/a | `string` | `"/app/bin/cert"` | no |
| <a name="input_cluster"></a> [cluster](#input\_cluster) | n/a | `string` | `"my-cluster"` | no |
| <a name="input_config-containerPath"></a> [config-containerPath](#input\_config-containerPath) | n/a | `string` | `"/app/config/local"` | no |
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | n/a | `number` | `1443` | no |
| <a name="input_deregistration_delay"></a> [deregistration\_delay](#input\_deregistration\_delay) | n/a | `number` | `300` | no |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | `"my-description"` | no |
| <a name="input_desired_count"></a> [desired\_count](#input\_desired\_count) | n/a | `number` | `0` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"my-environment"` | no |
| <a name="input_execution_role_arn"></a> [execution\_role\_arn](#input\_execution\_role\_arn) | n/a | `string` | `"my-execution_role_arn"` | no |
| <a name="input_force_delete"></a> [force\_delete](#input\_force\_delete) | n/a | `bool` | `false` | no |
| <a name="input_force_new_deployment"></a> [force\_new\_deployment](#input\_force\_new\_deployment) | n/a | `bool` | `true` | no |
| <a name="input_health_check_healthy_threshold"></a> [health\_check\_healthy\_threshold](#input\_health\_check\_healthy\_threshold) | n/a | `number` | `3` | no |
| <a name="input_health_check_interval"></a> [health\_check\_interval](#input\_health\_check\_interval) | n/a | `number` | `5` | no |
| <a name="input_health_check_path"></a> [health\_check\_path](#input\_health\_check\_path) | n/a | `string` | `"my-health-check-path"` | no |
| <a name="input_health_check_threshold"></a> [health\_check\_threshold](#input\_health\_check\_threshold) | n/a | `number` | `2` | no |
| <a name="input_health_check_timeout"></a> [health\_check\_timeout](#input\_health\_check\_timeout) | n/a | `number` | `3` | no |
| <a name="input_image_tag"></a> [image\_tag](#input\_image\_tag) | docker image tag to use for service | `string` | `"latest"` | no |
| <a name="input_listener-rule-order"></a> [listener-rule-order](#input\_listener-rule-order) | n/a | `number` | `1` | no |
| <a name="input_listener-rule-priority"></a> [listener-rule-priority](#input\_listener-rule-priority) | n/a | `number` | `1` | no |
| <a name="input_listener-rule-type"></a> [listener-rule-type](#input\_listener-rule-type) | n/a | `string` | `"forward"` | no |
| <a name="input_listener_arn"></a> [listener\_arn](#input\_listener\_arn) | n/a | `string` | `"my-listener_arn"` | no |
| <a name="input_logs-containerPath"></a> [logs-containerPath](#input\_logs-containerPath) | n/a | `string` | `"/app/logs"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | `"the owner"` | no |
| <a name="input_path_pattern"></a> [path\_pattern](#input\_path\_pattern) | n/a | `list(string)` | `[]` | no |
| <a name="input_private_subnet_a"></a> [private\_subnet\_a](#input\_private\_subnet\_a) | n/a | `string` | `"my-private_subnet_a"` | no |
| <a name="input_private_subnet_b"></a> [private\_subnet\_b](#input\_private\_subnet\_b) | n/a | `string` | `"my-private_subnet_b"` | no |
| <a name="input_public_subnet_a"></a> [public\_subnet\_a](#input\_public\_subnet\_a) | n/a | `string` | `"my-public_subnet_a"` | no |
| <a name="input_public_subnet_b"></a> [public\_subnet\_b](#input\_public\_subnet\_b) | n/a | `string` | `"my-public_subnet_b"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"my-region"` | no |
| <a name="input_safe_to_delete"></a> [safe\_to\_delete](#input\_safe\_to\_delete) | n/a | `bool` | `false` | no |
| <a name="input_scan_on_push"></a> [scan\_on\_push](#input\_scan\_on\_push) | n/a | `bool` | `true` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | n/a | `list(string)` | <pre>[<br>  "my-security_groups"<br>]</pre> | no |
| <a name="input_service"></a> [service](#input\_service) | n/a | `string` | `"my-service"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | n/a | `list(string)` | <pre>[<br>  "my-subnets"<br>]</pre> | no |
| <a name="input_target-group-port"></a> [target-group-port](#input\_target-group-port) | n/a | `number` | `80` | no |
| <a name="input_task-definition-containerPort"></a> [task-definition-containerPort](#input\_task-definition-containerPort) | n/a | `number` | `1443` | no |
| <a name="input_task-definition-cpu"></a> [task-definition-cpu](#input\_task-definition-cpu) | n/a | `number` | `256` | no |
| <a name="input_task-definition-hostPort"></a> [task-definition-hostPort](#input\_task-definition-hostPort) | n/a | `number` | `1443` | no |
| <a name="input_task-definition-memory"></a> [task-definition-memory](#input\_task-definition-memory) | n/a | `number` | `512` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | n/a | `string` | `"my-vpc-id"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_ecr_id"></a> [aws\_ecr\_id](#output\_aws\_ecr\_id) | n/a |
| <a name="output_aws_ecr_image-image_pushed_at"></a> [aws\_ecr\_image-image\_pushed\_at](#output\_aws\_ecr\_image-image\_pushed\_at) | n/a |
| <a name="output_ecr-repository_url"></a> [ecr-repository\_url](#output\_ecr-repository\_url) | n/a |
| <a name="output_efs-accesspoint-bin"></a> [efs-accesspoint-bin](#output\_efs-accesspoint-bin) | n/a |
| <a name="output_efs-accesspoint-config"></a> [efs-accesspoint-config](#output\_efs-accesspoint-config) | n/a |
| <a name="output_efs-accesspoint-logs"></a> [efs-accesspoint-logs](#output\_efs-accesspoint-logs) | n/a |
| <a name="output_efs-filesystem"></a> [efs-filesystem](#output\_efs-filesystem) | n/a |
| <a name="output_efs-filesystem-id"></a> [efs-filesystem-id](#output\_efs-filesystem-id) | n/a |
| <a name="output_output"></a> [output](#output\_output) | n/a |
<!-- END_TF_DOCS -->