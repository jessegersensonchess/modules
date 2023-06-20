
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
| <a name="input_access_point_path_bin"></a> [access\_point\_path\_bin](#input\_access\_point\_path\_bin) | efs access point path for 'bin' | `string` | `"/bin"` | no |
| <a name="input_access_point_path_config"></a> [access\_point\_path\_config](#input\_access\_point\_path\_config) | efs access point path for 'config' | `string` | `"/config"` | no |
| <a name="input_access_point_path_logs"></a> [access\_point\_path\_logs](#input\_access\_point\_path\_logs) | efs access point path for 'logs' | `string` | `"/logs"` | no |
| <a name="input_assign_public_ip"></a> [assign\_public\_ip](#input\_assign\_public\_ip) | Assign a public IP address to the ENI (Fargate launch type only). Valid values are true or false | `bool` | `true` | no |
| <a name="input_bin-containerPath"></a> [bin-containerPath](#input\_bin-containerPath) | path to the bin folder, as seen from inside the container. used in task definition for mounting the /bin EFS volume | `string` | `"/app/bin/cert"` | no |
| <a name="input_cluster"></a> [cluster](#input\_cluster) | n/a | `string` | `"my-cluster"` | no |
| <a name="input_config-containerPath"></a> [config-containerPath](#input\_config-containerPath) | path to the config folder, as seen from inside the container. used in task definition for mounting the /config EFS volume | `string` | `"/app/config/local"` | no |
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | Port on the container to associate with the load balancer. | `number` | `1443` | no |
| <a name="input_deregistration_delay"></a> [deregistration\_delay](#input\_deregistration\_delay) | Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds. | `number` | `300` | no |
| <a name="input_desired_count"></a> [desired\_count](#input\_desired\_count) | Number of instances of the task definition. | `number` | `0` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | (optional) Environment of the resource. Value appears as a tag with key Environment | `string` | `"my-environment"` | no |
| <a name="input_environment-variables"></a> [environment-variables](#input\_environment-variables) | environment variables for the container | `map(string)` | <pre>{<br>  "BOO": "baz",<br>  "FOO": "bar"<br>}</pre> | no |
| <a name="input_execution_role_arn"></a> [execution\_role\_arn](#input\_execution\_role\_arn) | ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume | `string` | `"my-execution_role_arn"` | no |
| <a name="input_force_delete"></a> [force\_delete](#input\_force\_delete) | (Optional) If true, will delete the repository even if it contains images | `bool` | `false` | no |
| <a name="input_force_new_deployment"></a> [force\_new\_deployment](#input\_force\_new\_deployment) | (Optional) Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., myimage:latest), roll Fargate tasks onto a newer platform version, or immediately deploy ordered\_placement\_strategy and placement\_constraints updates. | `bool` | `true` | no |
| <a name="input_health_check_healthy_threshold"></a> [health\_check\_healthy\_threshold](#input\_health\_check\_healthy\_threshold) | Number of consecutive health check successes required before considering a target healthy. The range is 2-10 | `number` | `2` | no |
| <a name="input_health_check_interval"></a> [health\_check\_interval](#input\_health\_check\_interval) | Approximate amount of time, in seconds, between health checks of an individual target. The range is 5-300. For lambda target groups, it needs to be greater than the timeout of the underlying lambda | `number` | `5` | no |
| <a name="input_health_check_path"></a> [health\_check\_path](#input\_health\_check\_path) | Destination for the health check request. Required for HTTP/HTTPS ALB and HTTP NLB. Only applies to HTTP/HTTPS. | `string` | `"my-health-check-path"` | no |
| <a name="input_health_check_timeout"></a> [health\_check\_timeout](#input\_health\_check\_timeout) | Amount of time, in seconds, during which no response from a target means a failed health check. The range is 2–120 seconds. | `number` | `3` | no |
| <a name="input_health_check_unhealthy_threshold"></a> [health\_check\_unhealthy\_threshold](#input\_health\_check\_unhealthy\_threshold) | Number of consecutive health check failures required before considering a target unhealthy. The range is 2-10. | `number` | `3` | no |
| <a name="input_image_tag"></a> [image\_tag](#input\_image\_tag) | docker image tag to use with service | `string` | `"latest"` | no |
| <a name="input_listener-rule-order"></a> [listener-rule-order](#input\_listener-rule-order) | #### TODO: remove | `number` | `1` | no |
| <a name="input_listener-rule-priority"></a> [listener-rule-priority](#input\_listener-rule-priority) | The priority for the rule between 1 and 50000. Leaving it unset will automatically set the rule with next available priority after currently existing highest rule. A listener can't have multiple rules with the same priority. | `number` | `1` | no |
| <a name="input_listener-rule-type"></a> [listener-rule-type](#input\_listener-rule-type) | The type of routing action. Valid values are forward, redirect, fixed-response, authenticate-cognito and authenticate-oidc | `string` | `"forward"` | no |
| <a name="input_listener_arn"></a> [listener\_arn](#input\_listener\_arn) | The ARN of the listener to which to attach the rule. | `string` | `"my-listener_arn"` | no |
| <a name="input_logs-containerPath"></a> [logs-containerPath](#input\_logs-containerPath) | path to the logs folder, as seen from inside the container. used in task definition for mounting the /logs EFS volume | `string` | `"/app/logs"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | (optional) Owner of the resource. Value appears as a tag with key Owner | `string` | `"the owner"` | no |
| <a name="input_path_pattern"></a> [path\_pattern](#input\_path\_pattern) | Contains a single values item which is a list of path patterns to match against the request URL. Maximum size of each pattern is 128 characters. Comparison is case sensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied. Path pattern is compared only to the path of the URL, not to its query string. To compare against the query string, use a query\_string condition. | `list(string)` | `[]` | no |
| <a name="input_private_subnet_a"></a> [private\_subnet\_a](#input\_private\_subnet\_a) | n/a | `string` | `"my-private_subnet_a"` | no |
| <a name="input_private_subnet_b"></a> [private\_subnet\_b](#input\_private\_subnet\_b) | n/a | `string` | `"my-private_subnet_b"` | no |
| <a name="input_public_subnet_a"></a> [public\_subnet\_a](#input\_public\_subnet\_a) | Public subnet, used by EFS filesystem | `string` | `"my-public_subnet_a"` | no |
| <a name="input_public_subnet_b"></a> [public\_subnet\_b](#input\_public\_subnet\_b) | Public subnet, used by EFS filesystem | `string` | `"my-public_subnet_b"` | no |
| <a name="input_readonlyRootFilesystem"></a> [readonlyRootFilesystem](#input\_readonlyRootFilesystem) | When this parameter is true, the container is given read-only access to its root file system. This parameter maps to ReadonlyRootfs in the Create a container section of the Docker Remote API and the --read-only option to docker run | `bool` | `true` | no |
| <a name="input_region"></a> [region](#input\_region) | aws region in which to add resources | `string` | `"my-region"` | no |
| <a name="input_safe_to_delete"></a> [safe\_to\_delete](#input\_safe\_to\_delete) | (optional) Can this resource be destroyed? Value appears as a tag with key safe\_to\_delete | `bool` | `false` | no |
| <a name="input_scan_on_push"></a> [scan\_on\_push](#input\_scan\_on\_push) | Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false). | `bool` | `true` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | Security group IDs, used by EFS filesystem | `list(string)` | <pre>[<br>  "my-security_groups"<br>]</pre> | no |
| <a name="input_service"></a> [service](#input\_service) | (optional) Service which uses this resource. Value appears as a tag with key Service | `string` | `"my-service"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | n/a | `list(string)` | <pre>[<br>  "my-subnets"<br>]</pre> | no |
| <a name="input_target-group-port"></a> [target-group-port](#input\_target-group-port) | n/a | `number` | `80` | no |
| <a name="input_task-definition-containerPort"></a> [task-definition-containerPort](#input\_task-definition-containerPort) | n/a | `number` | `1443` | no |
| <a name="input_task-definition-cpu"></a> [task-definition-cpu](#input\_task-definition-cpu) | n/a | `number` | `256` | no |
| <a name="input_task-definition-hostPort"></a> [task-definition-hostPort](#input\_task-definition-hostPort) | n/a | `number` | `1443` | no |
| <a name="input_task-definition-memory"></a> [task-definition-memory](#input\_task-definition-memory) | n/a | `number` | `512` | no |
| <a name="input_volumes"></a> [volumes](#input\_volumes) | (Optional) A set of volume blocks that containers in your task may use | <pre>list(object({<br>    host_path = string<br>    name      = string<br>    docker_volume_configuration = list(object({<br>      autoprovision = bool<br>      driver        = string<br>      driver_opts   = map(string)<br>      labels        = map(string)<br>      scope         = string<br>    }))<br>    efs_volume_configuration = list(object({<br>      file_system_id          = string<br>      root_directory          = string<br>      transit_encryption      = string<br>      transit_encryption_port = string<br>      authorization_config = list(object({<br>        access_point_id = string<br>        iam             = string<br>      }))<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | n/a | `string` | `"my-vpc-id"` | no |
| <a name="input_workingDirectory"></a> [workingDirectory](#input\_workingDirectory) | container's working directory | `string` | `"/app"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_ecr_id"></a> [aws\_ecr\_id](#output\_aws\_ecr\_id) | n/a |
| <a name="output_aws_ecr_image-image_pushed_at"></a> [aws\_ecr\_image-image\_pushed\_at](#output\_aws\_ecr\_image-image\_pushed\_at) | n/a |
| <a name="output_ecr-repository_url"></a> [ecr-repository\_url](#output\_ecr-repository\_url) | ECR repository URL |
| <a name="output_efs-accesspoint-bin"></a> [efs-accesspoint-bin](#output\_efs-accesspoint-bin) | Access point id for /bin |
| <a name="output_efs-accesspoint-config"></a> [efs-accesspoint-config](#output\_efs-accesspoint-config) | Access point id for /config |
| <a name="output_efs-accesspoint-logs"></a> [efs-accesspoint-logs](#output\_efs-accesspoint-logs) | Access point id for /logs |
| <a name="output_efs-filesystem"></a> [efs-filesystem](#output\_efs-filesystem) | All EFS output. Depreciated, this output will be removed. Use 'output' |
| <a name="output_efs-filesystem-id"></a> [efs-filesystem-id](#output\_efs-filesystem-id) | EFS filesystem ID |
| <a name="output_output"></a> [output](#output\_output) | All EFS output |
| <a name="output_target_group"></a> [target\_group](#output\_target\_group) | target group |
<!-- END_TF_DOCS -->
