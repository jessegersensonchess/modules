variable "cluster" {
  type    = string
  default = "CLUSTER-name-here"
}

variable "deployment_circuit_breaker-enable" {
  type    = bool
  default = true
}

variable "deployment_circuit_breaker-rollback" {
  type    = bool
  default = true
}

variable "deployment_controller-type" {
  type    = string
  default = "ECS"
}

variable "owner" {
  type    = string
  default = "service owner"
}

variable "environment" {
  type    = string
  default = "env"
}

variable "deployment_maximum_percent" {
  type    = number
  default = 200
}

variable "deployment_minimum_healthy_percent" {
  type    = number
  default = 100
}

variable "desired_count" {
  type    = string
  default = 0
}

variable "enable_ecs_managed_tags" {
  type    = bool
  default = true
}

variable "enable_execute_command" {
  type    = bool
  default = false
}

variable "health_check_grace_period_seconds" {
  type    = number
  default = 60
}

variable "launch_type" {
  type    = string
  default = "FARGATE"
}

variable "name" {
  type    = string
  default = "service-name-here-HTTP-WS-MXV-ZOHO"
}

variable "container_name" {
  type    = string
  default = "CONTAINER-NAME-HERE"
}

variable "container_port" {
  type    = number
  default = 1443
}

variable "target_group_arn" {
  type    = string
  default = "target-group-arn-here"
}

variable "assign_public_ip" {
  type    = bool
  default = true
}

variable "security_groups" {
  type    = list(string)
  default = []
}

variable "subnets" {
  type    = list(string)
  default = []
}

variable "platform_version" {
  type    = string
  default = "1.4.0"
}

variable "scheduling_strategy" {
  type    = string
  default = "REPLICA"
}

variable "task_definition" {
  type    = string
  default = "task-definition-arn-here"
}
