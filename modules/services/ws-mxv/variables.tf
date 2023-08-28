variable "assign_public_ip" {
  type        = bool
  default     = true
  description = "Assign a public IP address to the ENI (Fargate launch type only). Valid values are true or false"
}
variable "access_point_path_logs" {
  type        = string
  default     = "/logs"
  description = "efs access point path for 'logs'"
}
variable "access_point_path_bin" {
  type        = string
  default     = "/bin"
  description = "efs access point path for 'bin'"
}

variable "access_point_path_config" {
  type        = string
  default     = "/config"
  description = "efs access point path for 'config'"
}


variable "image_tag" {
  type        = string
  default     = "latest"
  description = "docker image tag to use with service"
}

variable "workingDirectory" {
  type        = string
  default     = "/app"
  description = "container's working directory"
}

variable "health_check_path" {
  type        = string
  default     = "my-health-check-path"
  description = "Destination for the health check request. Required for HTTP/HTTPS ALB and HTTP NLB. Only applies to HTTP/HTTPS."
}

variable "slow_start" {
  type        = number
  default     = 30
  description = "Amount time for targets to warm up before the load balancer sends them a full share of requests. The range is 30-900 seconds or 0 to disable."

}

variable "health_check_unhealthy_threshold" {
  type        = number
  default     = 3
  description = "Number of consecutive health check failures required before considering a target unhealthy. The range is 2-10."
}

variable "health_check_healthy_threshold" {
  type        = number
  default     = 2
  description = "Number of consecutive health check successes required before considering a target healthy. The range is 2-10"
}

variable "health_check_interval" {
  type        = number
  default     = 5
  description = "Approximate amount of time, in seconds, between health checks of an individual target. The range is 5-300. For lambda target groups, it needs to be greater than the timeout of the underlying lambda"
}

variable "health_check_timeout" {
  type        = number
  default     = 3
  description = "Amount of time, in seconds, during which no response from a target means a failed health check. The range is 2–120 seconds."
}

variable "region" {
  type        = string
  default     = "my-region"
  description = "aws region in which to add resources"
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

variable "scan_on_push" {
  type        = bool
  default     = true
  description = "Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)."
}

variable "force_delete" {
  type        = bool
  default     = false
  description = "(Optional) If true, will delete the repository even if it contains images"
}

variable "deregistration_delay" {
  type        = number
  default     = 300
  description = "Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds."
}

variable "container_port" {
  type        = number
  default     = 1443
  description = "Port on the container to associate with the load balancer."
}

variable "desired_count" {
  type        = number
  default     = 0
  description = "Number of instances of the task definition."
}

variable "readonlyRootFilesystem" {
  type        = bool
  default     = true
  description = "When this parameter is true, the container is given read-only access to its root file system. This parameter maps to ReadonlyRootfs in the Create a container section of the Docker Remote API and the --read-only option to docker run"
}

variable "task-definition-hostPort" {
  type        = number
  default     = 1443
  description = ""
}

variable "task-definition-containerPort" {
  type        = number
  default     = 1443
  description = ""
}

variable "task-definition-cpu" {
  type        = number
  default     = 256
  description = ""
}

variable "task-definition-memory" {
  type        = number
  default     = 512
  description = ""
}

variable "target-group-port" {
  type        = number
  default     = 80
  description = ""
}

variable "listener-rule-priority" {
  type        = number
  default     = 1
  description = "The priority for the rule between 1 and 50000. Leaving it unset will automatically set the rule with next available priority after currently existing highest rule. A listener can't have multiple rules with the same priority."
}

##### TODO: remove
variable "listener-rule-order" {
  type        = number
  default     = 1
  description = ""
}

variable "path_pattern" {
  type        = list(string)
  default     = []
  description = "Contains a single values item which is a list of path patterns to match against the request URL. Maximum size of each pattern is 128 characters. Comparison is case sensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied. Path pattern is compared only to the path of the URL, not to its query string. To compare against the query string, use a query_string condition."
}

variable "listener-rule-type" {
  type        = string
  default     = "forward"
  description = "The type of routing action. Valid values are forward, redirect, fixed-response, authenticate-cognito and authenticate-oidc"
}

variable "listener_arn" {
  type        = string
  default     = "my-listener_arn"
  description = "The ARN of the listener to which to attach the rule."
}

variable "cluster" {
  type        = string
  default     = "my-cluster"
  description = ""
}

variable "vpc_id" {
  type        = string
  default     = "my-vpc-id"
  description = ""
}

variable "subnets" {
  type        = list(string)
  default     = ["my-subnets"]
  description = ""
}

variable "security_groups" {
  type        = list(string)
  default     = ["my-security_groups"]
  description = "Security group IDs, used by EFS filesystem"
}

variable "private_subnet_a" {
  type        = string
  default     = "my-private_subnet_a"
  description = ""
}

variable "private_subnet_b" {
  type        = string
  default     = "my-private_subnet_b"
  description = ""
}

variable "public_subnet_a" {
  type        = string
  default     = "my-public_subnet_a"
  description = "Public subnet, used by EFS filesystem"
}

variable "public_subnet_b" {
  type        = string
  default     = "my-public_subnet_b"
  description = "Public subnet, used by EFS filesystem"
}

variable "execution_role_arn" {
  type        = string
  default     = "my-execution_role_arn"
  description = "ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume"
}

variable "force_new_deployment" {
  type        = bool
  default     = true
  description = "(Optional) Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., myimage:latest), roll Fargate tasks onto a newer platform version, or immediately deploy ordered_placement_strategy and placement_constraints updates."
}

variable "environment" {
  type        = string
  default     = "my-environment"
  description = "(optional) Environment of the resource. Value appears as a tag with key Environment"
}

variable "service" {
  type        = string
  default     = "my-service"
  description = "(optional) Service which uses this resource. Value appears as a tag with key Service"
}

variable "safe_to_delete" {
  type        = bool
  default     = false
  description = "(optional) Can this resource be destroyed? Value appears as a tag with key safe_to_delete"
}

variable "owner" {
  type        = string
  default     = "the owner"
  description = "(optional) Owner of the resource. Value appears as a tag with key Owner"
}

variable "environment-variables" {
  type = map(string)
  default = {
    "FOO" = "bar"
    "BOO" = "baz"
  }
  description = "environment variables for the container"
}

variable "mountPoints" {
  description = "Container mount points. This is a list of maps, where each map should contain a `containerPath` and `sourceVolume`. The `readOnly` key is optional."
  type = list(object({
    sourceVolume  = string
    containerPath = string
    readOnly      = bool
  }))
  default = []
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

