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
| <a name="input_assign_public_ip"></a> [assign\_public\_ip](#input\_assign\_public\_ip) | Assign a public IP address to the ENI (Fargate launch type only). Valid values are true or false | `bool` | `true` | no |
| <a name="input_cluster"></a> [cluster](#input\_cluster) | (optional) Cluster name which uses this resource. Value appears as a tag with key Cluster | `string` | `"CLUSTER-name-here"` | no |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Name of the container to associate with the load balancer (as it appears in a container definition). | `string` | `"CONTAINER-NAME-HERE"` | no |
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | Port on the container to associate with the load balancer | `number` | `1443` | no |
| <a name="input_control_value"></a> [control\_value](#input\_control\_value) | Used with 'triggers': Map of arbitrary keys and values that, when changed, will trigger an in-place update (redeployment). Useful with timestamp() | `string` | `"Used to trigger new deploys, holds a computed hash value"` | no |
| <a name="input_deployment_circuit_breaker-enable"></a> [deployment\_circuit\_breaker-enable](#input\_deployment\_circuit\_breaker-enable) | Whether to enable the deployment circuit breaker logic for the service | `bool` | `true` | no |
| <a name="input_deployment_circuit_breaker-rollback"></a> [deployment\_circuit\_breaker-rollback](#input\_deployment\_circuit\_breaker-rollback) | Whether to enable Amazon ECS to roll back the service if a service deployment fails. If rollback is enabled, when a service deployment fails, the service is rolled back to the last deployment that completed successfully. | `bool` | `true` | no |
| <a name="input_deployment_controller-type"></a> [deployment\_controller-type](#input\_deployment\_controller-type) | Type of deployment controller. Valid values: CODE\_DEPLOY, ECS, EXTERNAL | `string` | `"ECS"` | no |
| <a name="input_deployment_maximum_percent"></a> [deployment\_maximum\_percent](#input\_deployment\_maximum\_percent) | Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. Not valid when using the DAEMON scheduling strategy. | `number` | `200` | no |
| <a name="input_deployment_minimum_healthy_percent"></a> [deployment\_minimum\_healthy\_percent](#input\_deployment\_minimum\_healthy\_percent) | Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment. | `number` | `100` | no |
| <a name="input_desired_count"></a> [desired\_count](#input\_desired\_count) | Number of instances of the task definition to place and keep running. Defaults to 0. Do not specify if using the DAEMON scheduling strategy. | `string` | `0` | no |
| <a name="input_enable_ecs_managed_tags"></a> [enable\_ecs\_managed\_tags](#input\_enable\_ecs\_managed\_tags) | Specifies whether to enable Amazon ECS managed tags for the tasks within the service. | `bool` | `true` | no |
| <a name="input_enable_execute_command"></a> [enable\_execute\_command](#input\_enable\_execute\_command) | Specifies whether to enable Amazon ECS Exec for the tasks within the service. | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | (optional) Environment of the resource. Value appears as a tag with key Environment | `string` | `"env"` | no |
| <a name="input_force_new_deployment"></a> [force\_new\_deployment](#input\_force\_new\_deployment) | Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., myimage:latest), roll Fargate tasks onto a newer platform version, or immediately deploy ordered\_placement\_strategy and placement\_constraints updates. | `bool` | `true` | no |
| <a name="input_health_check_grace_period_seconds"></a> [health\_check\_grace\_period\_seconds](#input\_health\_check\_grace\_period\_seconds) | Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown, up to 2147483647. Only valid for services configured to use load balancers. | `number` | `30` | no |
| <a name="input_launch_type"></a> [launch\_type](#input\_launch\_type) | Launch type on which to run your service. The valid values are EC2, FARGATE, and EXTERNAL | `string` | `"FARGATE"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the service (up to 255 letters, numbers, hyphens, and underscores) | `string` | `"service-name-here"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | (optional) Owner of the resource. Value appears as a tag with key Owner | `string` | `"service owner"` | no |
| <a name="input_platform_version"></a> [platform\_version](#input\_platform\_version) | Platform version on which to run your service. Only applicable for launch\_type set to FARGATE. See https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html | `string` | `"1.4.0"` | no |
| <a name="input_scheduling_strategy"></a> [scheduling\_strategy](#input\_scheduling\_strategy) | Scheduling strategy to use for the service. The valid values are REPLICA and DAEMON. Defaults to REPLICA | `string` | `"REPLICA"` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used. | `list(string)` | `[]` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | Subnets associated with the task or service. | `list(string)` | `[]` | no |
| <a name="input_target_group_arn"></a> [target\_group\_arn](#input\_target\_group\_arn) | ARN of the Load Balancer target group to associate with the service | `string` | `"target-group-arn-here"` | no |
| <a name="input_task_definition"></a> [task\_definition](#input\_task\_definition) | Family and revision (family:revision) or full ARN of the task definition that you want to run in your service. Required unless using the EXTERNAL deployment controller. If a revision is not specified, the latest ACTIVE revision is used. | `string` | `"task-definition-arn-here"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_output"></a> [output](#output\_output) | output from aws\_ecs\_service |
<!-- END_TF_DOCS -->