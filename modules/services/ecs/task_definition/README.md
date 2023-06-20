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
| [aws_cloudwatch_log_group.log_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_ecs_task_definition.definition](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_point_id-bin"></a> [access\_point\_id-bin](#input\_access\_point\_id-bin) | access point id of 'bin' EFS | `string` | `"my-access_point_id-bin"` | no |
| <a name="input_access_point_id-config"></a> [access\_point\_id-config](#input\_access\_point\_id-config) | access point id of 'config' EFS | `string` | `"my-access_point_id-config"` | no |
| <a name="input_access_point_id-logs"></a> [access\_point\_id-logs](#input\_access\_point\_id-logs) | access point id of 'logs' EFS | `string` | `"my-access_point_id-logs"` | no |
| <a name="input_app"></a> [app](#input\_app) | value for docker label APP | `string` | `"my-app"` | no |
| <a name="input_awslogs-stream-prefix"></a> [awslogs-stream-prefix](#input\_awslogs-stream-prefix) | AWS stream prefix of logConfiguration | `string` | `"ecs"` | no |
| <a name="input_bin-containerPath"></a> [bin-containerPath](#input\_bin-containerPath) | path to the bin folder, as seen from inside the container. used in task definition for mounting the /bin EFS volume | `string` | `"/app/bin/cert"` | no |
| <a name="input_config-containerPath"></a> [config-containerPath](#input\_config-containerPath) | path to the config folder, as seen from inside the container. used in task definition for mounting the /config EFS volume | `string` | `"/app/config/local"` | no |
| <a name="input_containerPort"></a> [containerPort](#input\_containerPort) | The list of port mappings for the container. Port mappings allow containers to access ports on the host container instance to send or receive traffic. | `number` | `1` | no |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Name of the container that will serve as the App Mesh proxy. | `string` | `"CONTAINER-ENV-SERVICE"` | no |
| <a name="input_cpu"></a> [cpu](#input\_cpu) | Number of cpu units used by the task. If the requires\_compatibilities is FARGATE this field is required. | `number` | `256` | no |
| <a name="input_description"></a> [description](#input\_description) | basic description of resource. Value appears as a meta tag with key Description | `string` | `"my-description"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | (optional) Environment of the resource. Value appears as a tag with key Environment | `string` | `"dev"` | no |
| <a name="input_environment-variables"></a> [environment-variables](#input\_environment-variables) | environment variables for the container | `map(string)` | <pre>{<br>  "NODE_ENV": "production",<br>  "PORT": "8080"<br>}</pre> | no |
| <a name="input_essential"></a> [essential](#input\_essential) | If the essential parameter of a container is marked as true, and that container fails or stops for any reason, all other containers that are part of the task are stopped. If the essential parameter of a container is marked as false, its failure doesn't affect the rest of the containers in a task. https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html | `bool` | `true` | no |
| <a name="input_execution_role_arn"></a> [execution\_role\_arn](#input\_execution\_role\_arn) | ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume | `string` | `"my-execution_role_arn"` | no |
| <a name="input_family"></a> [family](#input\_family) | A unique name for your task definition. | `string` | `"TSK-my-family"` | no |
| <a name="input_file_system_id"></a> [file\_system\_id](#input\_file\_system\_id) | EFS file system id | `string` | `"my-file_system_id"` | no |
| <a name="input_hostPort"></a> [hostPort](#input\_hostPort) | The list of port mappings for the container. Port mappings allow containers to access ports on the host container instance to send or receive traffic. | `number` | `1` | no |
| <a name="input_image"></a> [image](#input\_image) | container image | `string` | `"my-image"` | no |
| <a name="input_logs-containerPath"></a> [logs-containerPath](#input\_logs-containerPath) | path to the logs folder, as seen from inside the container. used in task definition for mounting the /logs EFS volume | `string` | `"/app/logs"` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | Amount (in MiB) of memory used by the task. If the requires\_compatibilities is FARGATE this field is required. | `number` | `512` | no |
| <a name="input_mount-points"></a> [mount-points](#input\_mount-points) | Container mount points. This is a list of maps, where each map should contain a `containerPath` and `sourceVolume`. The `readOnly` key is optional. | <pre>list(object({<br>    sourceVolume  = string<br>    containerPath = string<br>    readOnly      = bool<br>  }))</pre> | `[]` | no |
| <a name="input_name-bin"></a> [name-bin](#input\_name-bin) | name of 'bin' volume | `string` | `"bin"` | no |
| <a name="input_name-config"></a> [name-config](#input\_name-config) | name of 'config' volume | `string` | `"config"` | no |
| <a name="input_name-logs"></a> [name-logs](#input\_name-logs) | name of 'logs' volume | `string` | `"logs"` | no |
| <a name="input_network_mode"></a> [network\_mode](#input\_network\_mode) | Docker networking mode to use for the containers in the task. Valid values are none, bridge, awsvpc, and host | `string` | `"awsvpc"` | no |
| <a name="input_node_env"></a> [node\_env](#input\_node\_env) | ENV variable read by node | `string` | `"my-node_env"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | (optional) Owner of the resource. Value appears as a tag with key Owner | `string` | `"my-owner"` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | The protocol that's used for the port mapping. Valid values are tcp and udp | `string` | `"tcp"` | no |
| <a name="input_readonlyRootFilesystem"></a> [readonlyRootFilesystem](#input\_readonlyRootFilesystem) | When this parameter is true, the container is given read-only access to its root file system. | `bool` | `true` | no |
| <a name="input_region"></a> [region](#input\_region) | aws region in which to add resources | `string` | `"my-region"` | no |
| <a name="input_requires_compatibilities"></a> [requires\_compatibilities](#input\_requires\_compatibilities) | Set of launch types required by the task. The valid values are EC2 and FARGATE. | `list(string)` | <pre>[<br>  "FARGATE"<br>]</pre> | no |
| <a name="input_root_directory-bin"></a> [root\_directory-bin](#input\_root\_directory-bin) | root directory of 'bin' volume | `string` | `"/"` | no |
| <a name="input_root_directory-config"></a> [root\_directory-config](#input\_root\_directory-config) | root directory of 'config' volume | `string` | `"/"` | no |
| <a name="input_root_directory-logs"></a> [root\_directory-logs](#input\_root\_directory-logs) | root directory of 'logs' volume | `string` | `"/"` | no |
| <a name="input_safe_to_delete"></a> [safe\_to\_delete](#input\_safe\_to\_delete) | (optional) Can this resource be destroyed? Value appears as a tag with key safe\_to\_delete | `bool` | `false` | no |
| <a name="input_service"></a> [service](#input\_service) | (optional) Service which uses this resource. Value appears as a tag with key Service | `string` | `"my-service"` | no |
| <a name="input_volumes"></a> [volumes](#input\_volumes) | (Optional) A set of volume blocks that containers in your task may use | <pre>list(object({<br>    host_path = string<br>    name      = string<br>    docker_volume_configuration = list(object({<br>      autoprovision = bool<br>      driver        = string<br>      driver_opts   = map(string)<br>      labels        = map(string)<br>      scope         = string<br>    }))<br>    efs_volume_configuration = list(object({<br>      file_system_id          = string<br>      root_directory          = string<br>      transit_encryption      = string<br>      transit_encryption_port = string<br>      authorization_config = list(object({<br>        access_point_id = string<br>        iam             = string<br>      }))<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_workingDirectory"></a> [workingDirectory](#input\_workingDirectory) | container's working directory | `string` | `"/app"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_name"></a> [container\_name](#output\_container\_name) | container name |
| <a name="output_output"></a> [output](#output\_output) | output from aws\_ecs\_task\_definition |
<!-- END_TF_DOCS -->