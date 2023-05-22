variable "access_point_id-logs" {
  type        = string
  default     = "my-access_point_id-logs"
  description = "access point id of 'logs' EFS"
}

variable "bin-containerPath" {
  type        = string
  default     = "/app/bin/cert"
  description = "path to the bin folder, as seen from inside the container. used in task definition for mounting the /bin EFS volume"
}

variable "config-containerPath" {
  type        = string
  default     = "/app/config/local"
  description = "path to the config folder, as seen from inside the container. used in task definition for mounting the /config EFS volume"
}

variable "logs-containerPath" {
  type        = string
  default     = "/app/logs"
  description = "path to the logs folder, as seen from inside the container. used in task definition for mounting the /logs EFS volume"
}

variable "file_system_id" {
  type        = string
  default     = "my-file_system_id"
  description = "EFS file system id"
}

variable "root_directory-logs" {
  type        = string
  default     = "/"
  description = "root directory of 'logs' volume"
}

variable "name-logs" {
  type        = string
  default     = "logs"
  description = "name of 'logs' volume"
}

variable "access_point_id-bin" {
  type        = string
  default     = "my-access_point_id-bin"
  description = "access point id of 'bin' EFS"
}

variable "root_directory-bin" {
  type        = string
  default     = "/"
  description = "root directory of 'bin' volume"
}

variable "protocol" {
  type        = string
  default     = "tcp"
  description = "The protocol that's used for the port mapping. Valid values are tcp and udp"
}

variable "name-bin" {
  type        = string
  default     = "bin"
  description = "name of 'bin' volume"
}

variable "access_point_id-config" {
  type        = string
  default     = "my-access_point_id-config"
  description = "access point id of 'config' EFS"
}

variable "root_directory-config" {
  type        = string
  default     = "/"
  description = "root directory of 'config' volume"
}

variable "name-config" {
  type        = string
  default     = "config"
  description = "name of 'config' volume"
}

variable "app" {
  type        = string
  default     = "my-app"
  description = "value for docker label APP"
}

variable "family" {
  type        = string
  default     = "TSK-my-family" # "TSK-STAGE-WS-MXV-911"
  description = "A unique name for your task definition."
}

variable "memory" {
  type        = number
  default     = 512
  description = "Amount (in MiB) of memory used by the task. If the requires_compatibilities is FARGATE this field is required."
}

variable "readonlyRootFilesystem" {
  type        = bool
  default     = true
  description = "When this parameter is true, the container is given read-only access to its root file system."
}

variable "cpu" {
  type        = number
  default     = 256
  description = "Number of cpu units used by the task. If the requires_compatibilities is FARGATE this field is required."
}

variable "network_mode" {
  type        = string
  default     = "awsvpc"
  description = "Docker networking mode to use for the containers in the task. Valid values are none, bridge, awsvpc, and host"
}

variable "requires_compatibilities" {
  type        = list(string)
  default     = ["FARGATE"]
  description = "Set of launch types required by the task. The valid values are EC2 and FARGATE."
}

#variable "awslogs-group" {
#  type        = string
#  default     = "my-awslogs-group"
#  description = "AWS logs group of logConfiguration"
#}

variable "awslogs-stream-prefix" {
  type        = string
  default     = "ecs"
  description = "AWS stream prefix of logConfiguration"
}

variable "region" {
  type        = string
  default     = "my-region"
  description = "aws region in which to add resources"
}

variable "image" {
  type        = string
  default     = "my-image"
  description = "container image"
}

variable "essential" {
  type        = bool
  default     = true
  description = "If the essential parameter of a container is marked as true, and that container fails or stops for any reason, all other containers that are part of the task are stopped. If the essential parameter of a container is marked as false, its failure doesn't affect the rest of the containers in a task. https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html"
}

variable "node_env" {
  type        = string
  default     = "my-node_env"
  description = "ENV variable read by node"
}

variable "container_name" {
  type        = string
  default     = "CONTAINER-ENV-SERVICE"
  description = "Name of the container that will serve as the App Mesh proxy."
}

variable "containerPort" {
  type        = number
  default     = 1
  description = "The list of port mappings for the container. Port mappings allow containers to access ports on the host container instance to send or receive traffic."
}

variable "hostPort" {
  type        = number
  default     = 1
  description = "The list of port mappings for the container. Port mappings allow containers to access ports on the host container instance to send or receive traffic."
}

variable "execution_role_arn" {
  type        = string
  default     = "my-execution_role_arn"
  description = "ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "(optional) Environment of the resource. Value appears as a tag with key Environment"
}

variable "description" {
  type        = string
  default     = "my-description"
  description = "basic description of resource. Value appears as a meta tag with key Description"
}

variable "owner" {
  type        = string
  default     = "my-owner"
  description = "(optional) Owner of the resource. Value appears as a tag with key Owner"
}

variable "safe_to_delete" {
  type        = bool
  default     = false
  description = "(optional) Can this resource be destroyed? Value appears as a tag with key safe_to_delete"
}

variable "service" {
  type        = string
  default     = "my-service"
  description = "(optional) Service which uses this resource. Value appears as a tag with key Service"
}

