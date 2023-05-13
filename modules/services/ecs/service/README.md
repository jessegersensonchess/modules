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
| [aws_ecs_service.service](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_public_ip"></a> [assign\_public\_ip](#input\_assign\_public\_ip) | n/a | `bool` | `true` | no |
| <a name="input_cluster"></a> [cluster](#input\_cluster) | n/a | `string` | `"CLUSTER-name-here"` | no |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | n/a | `string` | `"CONTAINER-NAME-HERE"` | no |
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | n/a | `number` | `1443` | no |
| <a name="input_control_value"></a> [control\_value](#input\_control\_value) | n/a | `string` | `""` | no |
| <a name="input_deployment_circuit_breaker-enable"></a> [deployment\_circuit\_breaker-enable](#input\_deployment\_circuit\_breaker-enable) | n/a | `bool` | `true` | no |
| <a name="input_deployment_circuit_breaker-rollback"></a> [deployment\_circuit\_breaker-rollback](#input\_deployment\_circuit\_breaker-rollback) | n/a | `bool` | `true` | no |
| <a name="input_deployment_controller-type"></a> [deployment\_controller-type](#input\_deployment\_controller-type) | n/a | `string` | `"ECS"` | no |
| <a name="input_deployment_maximum_percent"></a> [deployment\_maximum\_percent](#input\_deployment\_maximum\_percent) | n/a | `number` | `200` | no |
| <a name="input_deployment_minimum_healthy_percent"></a> [deployment\_minimum\_healthy\_percent](#input\_deployment\_minimum\_healthy\_percent) | n/a | `number` | `100` | no |
| <a name="input_desired_count"></a> [desired\_count](#input\_desired\_count) | n/a | `string` | `0` | no |
| <a name="input_enable_ecs_managed_tags"></a> [enable\_ecs\_managed\_tags](#input\_enable\_ecs\_managed\_tags) | n/a | `bool` | `true` | no |
| <a name="input_enable_execute_command"></a> [enable\_execute\_command](#input\_enable\_execute\_command) | n/a | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"env"` | no |
| <a name="input_force_new_deployment"></a> [force\_new\_deployment](#input\_force\_new\_deployment) | n/a | `bool` | `true` | no |
| <a name="input_health_check_grace_period_seconds"></a> [health\_check\_grace\_period\_seconds](#input\_health\_check\_grace\_period\_seconds) | n/a | `number` | `30` | no |
| <a name="input_launch_type"></a> [launch\_type](#input\_launch\_type) | n/a | `string` | `"FARGATE"` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | `"service-name-here-HTTP-WS-MXV-ZOHO"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | `"service owner"` | no |
| <a name="input_platform_version"></a> [platform\_version](#input\_platform\_version) | n/a | `string` | `"1.4.0"` | no |
| <a name="input_scheduling_strategy"></a> [scheduling\_strategy](#input\_scheduling\_strategy) | n/a | `string` | `"REPLICA"` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | n/a | `list(string)` | `[]` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | n/a | `list(string)` | `[]` | no |
| <a name="input_target_group_arn"></a> [target\_group\_arn](#input\_target\_group\_arn) | n/a | `string` | `"target-group-arn-here"` | no |
| <a name="input_task_definition"></a> [task\_definition](#input\_task\_definition) | n/a | `string` | `"task-definition-arn-here"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_output"></a> [output](#output\_output) | n/a |
<!-- END_TF_DOCS -->