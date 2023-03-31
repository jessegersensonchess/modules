variable "access_point_id-logs" {
  type    = string
  default = "my-access_point_id-logs"
}

variable "description" {
  type    = string
  default = "my-description"
}

variable "owner" {
  type    = string
  default = "my-owner"
}

variable "safe_to_delete" {
  type    = bool
  default = false
}

variable "service" {
  type    = string
  default = "my-service"
}

variable "file_system_id" {
  type    = string
  default = "my-file_system_id"
}

variable "root_directory-logs" {
  type    = string
  default = "/"
}

variable "name-logs" {
  type    = string
  default = "logs"
}

variable "access_point_id-bin" {
  type    = string
  default = "my-access_point_id-bin"
}

variable "root_directory-bin" {
  type    = string
  default = "/"
}

variable "protocol" {
  type    = string
  default = "tcp"
}

variable "name-bin" {
  type    = string
  default = "bin"
}

variable "access_point_id-config" {
  type    = string
  default = "my-access_point_id-config"
}

variable "root_directory-config" {
  type    = string
  default = "/"
}

variable "name-config" {
  type    = string
  default = "config"
}

variable "app" {
  type    = string
  default = "my-app"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "family" {
  type    = string
  default = "TSK-my-family" # "TSK-STAGE-WS-MXV-911"
}

variable "memory" {
  type    = number
  default = 512
}

variable "readonlyRootFilesystem" {
  type    = bool
  default = true
}

variable "cpu" {
  type    = number
  default = 256
}

variable "network_mode" {
  type    = string
  default = "awsvpc"
}

variable "requires_compatibilities" {
  type    = list(string)
  default = ["FARGATE"]
}

variable "awslogs-group" {
  type    = string
  default = "my-awslogs-group"
}

variable "awslogs-stream-prefix" {
  type    = string
  default = "ecs"
}

variable "awslogs-region" {
  type    = string
  default = "my-awslogs-region"
}

variable "region" {
  type    = string
  default = "my-region"
}

variable "image" {
  type    = string
  default = "my-image"
}

variable "essential" {
  type    = bool
  default = true
}

variable "node_env" {
  type    = string
  default = "my-node_env"
}

variable "container_name" {
  type    = string
  default = "CONTAINER-ENV-SERVICE"
}

variable "containerPort" {
  type    = number
  default = 1
}

variable "hostPort" {
  type    = number
  default = 1
}

variable "execution_role_arn" {
  type    = string
  default = "my-execution_role_arn"
}


