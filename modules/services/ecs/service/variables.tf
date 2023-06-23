variable "deployment_circuit_breaker-enable" {
  type        = bool
  default     = true
  description = "Whether to enable the deployment circuit breaker logic for the service"
}

variable "deployment_circuit_breaker-rollback" {
  type        = bool
  default     = true
  description = "Whether to enable Amazon ECS to roll back the service if a service deployment fails. If rollback is enabled, when a service deployment fails, the service is rolled back to the last deployment that completed successfully."
}

variable "deployment_controller-type" {
  type        = string
  default     = "ECS"
  description = "Type of deployment controller. Valid values: CODE_DEPLOY, ECS, EXTERNAL"
}

variable "deployment_maximum_percent" {
  type        = number
  default     = 200
  description = "Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. Not valid when using the DAEMON scheduling strategy."
}

variable "deployment_minimum_healthy_percent" {
  type        = number
  default     = 100
  description = "Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment."
}

variable "desired_count" {
  type        = string
  default     = 0
  description = "Number of instances of the task definition to place and keep running. Defaults to 0. Do not specify if using the DAEMON scheduling strategy."
}

variable "enable_ecs_managed_tags" {
  type        = bool
  default     = true
  description = "Specifies whether to enable Amazon ECS managed tags for the tasks within the service."
}

variable "enable_execute_command" {
  type        = bool
  default     = false
  description = "Specifies whether to enable Amazon ECS Exec for the tasks within the service."
}

variable "health_check_grace_period_seconds" {
  type        = number
  default     = 30
  description = "Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown, up to 2147483647. Only valid for services configured to use load balancers."
}

variable "launch_type" {
  type        = string
  default     = "FARGATE"
  description = "Launch type on which to run your service. The valid values are EC2, FARGATE, and EXTERNAL"
}

variable "name" {
  type        = string
  default     = "service-name-here"
  description = "Name of the service (up to 255 letters, numbers, hyphens, and underscores)"
}

variable "container_name" {
  type        = string
  default     = "CONTAINER-NAME-HERE"
  description = "Name of the container to associate with the load balancer (as it appears in a container definition)."
}

variable "container_port" {
  type        = number
  default     = 1443
  description = "Port on the container to associate with the load balancer"
}

variable "target_group_arn" {
  type        = string
  default     = "target-group-arn-here"
  description = "ARN of the Load Balancer target group to associate with the service"
}

variable "assign_public_ip" {
  type        = bool
  default     = true
  description = "Assign a public IP address to the ENI (Fargate launch type only). Valid values are true or false"
}

variable "security_groups" {
  type        = list(string)
  default     = []
  description = "Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used."
}

variable "subnets" {
  type        = list(string)
  default     = []
  description = "Subnets associated with the task or service."
}

variable "platform_version" {
  type        = string
  default     = "1.4.0"
  description = "Platform version on which to run your service. Only applicable for launch_type set to FARGATE. See https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html"
}

variable "scheduling_strategy" {
  type        = string
  default     = "REPLICA"
  description = "Scheduling strategy to use for the service. The valid values are REPLICA and DAEMON. Defaults to REPLICA"
}

variable "task_definition" {
  type        = string
  default     = "task-definition-arn-here"
  description = "Family and revision (family:revision) or full ARN of the task definition that you want to run in your service. Required unless using the EXTERNAL deployment controller. If a revision is not specified, the latest ACTIVE revision is used."
}

variable "force_new_deployment" {
  type        = bool
  default     = true
  description = "Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., myimage:latest), roll Fargate tasks onto a newer platform version, or immediately deploy ordered_placement_strategy and placement_constraints updates."
}

variable "control_value" {
  type        = string
  default     = "Used to trigger new deploys, holds a computed hash value"
  description = "Used with 'triggers': Map of arbitrary keys and values that, when changed, will trigger an in-place update (redeployment). Useful with timestamp()"
}

variable "cluster" {
  type        = string
  default     = "CLUSTER-name-here"
  description = "(optional) Cluster name which uses this resource. Value appears as a tag with key Cluster"
}

variable "owner" {
  type        = string
  default     = "service owner"
  description = "(optional) Owner of the resource. Value appears as a tag with key Owner"
}

variable "environment" {
  type        = string
  default     = "env"
  description = "(optional) Environment of the resource. Value appears as a tag with key Environment"
}

variable "capacity_provider_strategy_base" {
  type        = number
  default     = 2
  description = "Number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined"
}

variable "capacity_provider_strategy_capacity_provider" {
  type        = string
  default     = "FARGATE_SPOT"
  description = "Short name of the capacity provider."

}

variable "capacity_provider_strategy_weight" {
  type        = number
  default     = 100
  description = "Relative percentage of the total number of launched tasks that should use the specified capacity provider."
}

