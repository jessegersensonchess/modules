variable "vpc_id" {
  type        = string
  default     = "my-vpc-id"
  description = "VPC id"
}

variable "deregistration_delay" {
  type        = number
  default     = 300
  description = "Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds."
}

variable "health_check_path" {
  type        = string
  default     = "/my-health-check-path"
  description = "Destination for the health check request. Required for HTTP/HTTPS ALB and HTTP NLB. Only applies to HTTP/HTTPS."
}

variable "health_check_enabled" {
  type        = string
  default     = "true"
  description = "Whether health checks are enabled."
}

variable "health_check_matcher" {
  type        = number
  default     = 200
  description = "Response codes to use when checking for a healthy responses from a target. You can specify multiple values (for example, '200,202' for HTTP(s) or '0,12' for GRPC) or a range of values (for example, '200-299' or '0-99'). Required for HTTP/HTTPS/GRPC ALB. Only applies to Application Load Balancers (i.e., HTTP/HTTPS/GRPC) not Network Load Balancers (i.e., TCP)."

}

variable "health_check_protocol" {
  type        = string
  default     = "HTTP"
  description = "Protocol the load balancer uses when performing health checks on targets. Must be either TCP, HTTP, or HTTPS"
}

variable "health_check_port" {
  type        = string
  default     = "traffic-port"
  description = "The port the load balancer uses when performing health checks on targets"
}

variable "target_group_name" {
  type        = string
  default     = "target_group_name"
  description = ""
}

variable "health_check_healthy_threshold" {
  type        = number
  default     = 3
  description = "Number of consecutive health check successes required before considering a target healthy. The range is 2-10."
}

variable "health_check_interval" {
  type        = number
  default     = 5
  description = "Approximate amount of time, in seconds, between health checks of an individual target. The range is 5-300. "
}

variable "health_check_timeout" {
  type        = number
  default     = 3
  description = "Amount of time, in seconds, during which no response from a target means a failed health check. The range is 2–120 seconds."
}

variable "health_check_unhealthy_threshold" {
  type        = number
  default     = 3
  description = "Number of consecutive health check failures required before considering a target unhealthy. The range is 2-10."
}

variable "slow_start" {
  type        = number
  default     = 0
  description = "Amount time for targets to warm up before the load balancer sends them a full share of requests. The range is 30-900 seconds or 0 to disable."
}

variable "port" {
  type        = number
  default     = 1230
  description = "Port on which targets receive traffic, unless overridden when registering a specific target. Required when target_type is instance, ip or alb. Does not apply when target_type is lambda"
}

variable "protocol" {
  type        = string
  default     = "HTTP"
  description = "Protocol to use for routing traffic to the targets. Should be one of GENEVE, HTTP, HTTPS, TCP, TCP_UDP, TLS, or UDP. Required when target_type is instance, ip or alb. Does not apply when target_type is lambda."
}

variable "protocol_version" {
  type        = string
  default     = "HTTP1"
  description = "Only applicable when protocol is HTTP or HTTPS. The protocol version. Specify GRPC to send requests to targets using gRPC. Specify HTTP2 to send requests to targets using HTTP/2."
}

variable "load_balancing_algorithm_type" {
  type        = string
  default     = "round_robin"
  description = "Determines how the load balancer selects targets when routing requests. Only applicable for Application Load Balancer Target Groups. The value is round_robin or least_outstanding_requests"
}

variable "ip_address_type" {
  type        = string
  default     = "ipv4"
  description = "The type of IP addresses used by the target group, only supported when target type is set to ip. Possible values are ipv4 or ipv6."
}

variable "stickiness_cookie_duration" {
  type        = number
  default     = 86400
  description = ""
}

variable "stickiness_enabled" {
  type        = bool
  default     = false
  description = ""
}

variable "stickiness_type" {
  type        = string
  default     = "lb_cookie"
  description = ""
}

variable "target_type" {
  type        = string
  default     = "ip"
  description = ""
}

variable "environment" {
  type        = string
  description = "(optional) Environment of the resource. Value appears as a tag with key Environment"
}

variable "owner" {
  type        = string
  default     = "service owner"
  description = "(optional) Owner of the resource. Value appears as a tag with key Owner"
}

variable "safe_to_delete" {
  type        = string
  default     = "yes"
  description = "(optional) Is it ok to destroy this resource? Value appears as a tag with key safe_to_delete"
}

variable "managed_by" {
  type        = string
  default     = "Terraform"
  description = "entity managing this resource. Value appears as a meta tag with key Managed_By"
}


