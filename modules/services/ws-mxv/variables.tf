variable "health_check_path" {
  type    = string
  default = "my-health-check-path"
}

variable "health_check_healthy_threshold" {
  type    = number
  default = 3
}

variable "health_check_interval" {
  type    = number
  default = 5
}

variable "health_check_timeout" {
  type    = number
  default = 3
}

variable "health_check_threshold" {
  type    = number
  default = 2
}

variable "description" {
  type    = string
  default = "my-description"
}

variable "environment" {
  type    = string
  default = "my-environment"
}

variable "service" {
  type    = string
  default = "my-service"
}

variable "region" {
  type    = string
  default = "my-region"
}

variable "bin-containerPath" {
  type    = string
  default = "/app/bin/cert"
}

variable "config-containerPath" {
  type    = string
  default = "/app/config/local"
}

#variable "container_environment" {
# 	type = list(string)
# 	default = {"placeholder"="here"}
# 	}

variable "logs-containerPath" {
  type    = string
  default = "/app/logs"
}

variable "scan_on_push" {
  type    = bool
  default = true
}

variable "force_delete" {
  type    = bool
  default = false
}

variable "safe_to_delete" {
  type    = bool
  default = false
}

variable "owner" {
  type    = string
  default = "the owner"
}

variable "deregistration_delay" {
  type    = number
  default = 300
}

variable "container_port" {
  type    = number
  default = 1443
}

variable "desired_count" {
  type    = number
  default = 0
}

variable "task-definition-hostPort" {
  type    = number
  default = 1443
}

variable "task-definition-containerPort" {
  type    = number
  default = 1443
}

variable "task-definition-cpu" {
  type    = number
  default = 256
}

variable "task-definition-memory" {
  type    = number
  default = 512
}

variable "target-group-port" {
  type    = number
  default = 80
}

variable "listener-rule-priority" {
  type    = number
  default = 1
}

variable "listener-rule-order" {
  type    = number
  default = 1
}

variable "path_pattern" {
  type    = list(string)
  default = []
}

variable "listener-rule-type" {
  type    = string
  default = "forward"
}

variable "listener_arn" {
  type    = string
  default = "my-listener_arn"
}

variable "cluster" {
  type    = string
  default = "my-cluster"
}

variable "vpc_id" {
  type    = string
  default = "my-vpc-id"
}

variable "subnets" {
  type    = list(string)
  default = ["my-subnets"]
}

variable "security_groups" {
  type    = list(string)
  default = ["my-security_groups"]
}

variable "private_subnet_a" {
  type    = string
  default = "my-private_subnet_a"
}

variable "private_subnet_b" {
  type    = string
  default = "my-private_subnet_b"
}

variable "public_subnet_a" {
  type    = string
  default = "my-public_subnet_a"
}

variable "public_subnet_b" {
  type    = string
  default = "my-public_subnet_b"
}

variable "execution_role_arn" {
  type    = string
  default = "my-execution_role_arn"
}

variable "force_new_deployment" {
  type    = bool
  default = true
}

