variable "vpc_id" {
  type    = string
  default = "my-vpc-id"
}

variable "deregistration_delay" {
  type    = number
  default = 300
}

variable "health_check_path" {
  type    = string
  default = "/my-health-check-path"
}

variable "owner" {
  type    = string
  default = "service owner"
}

variable "service" {
  type    = string
  default = "my service"
}

variable "safe_to_delete" {
  type    = string
  default = "yes"
}

variable "managed_by" {
  type    = string
  default = "Terraform"
}

variable "health_check_enabled" {
  type    = string
  default = "true"
}

variable "health_check_matcher" {
  type    = number
  default = 200
}

variable "health_check_protocol" {
  type    = string
  default = "HTTP"
}

variable "health_check_port" {
  type    = string
  default = "traffic-port"
}

variable "target_group_name" {
  type    = string
  default = "target_group_name"
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

variable "slow_start" {
  type    = number
  default = 0
}

variable "port" {
  type    = number
  default = 1230
}

variable "protocol" {
  type    = string
  default = "HTTP"
}

variable "protocol_version" {
  type    = string
  default = "HTTP1"
}

variable "load_balancing_algorithm_type" {
  type    = string
  default = "round_robin"
}

variable "ip_address_type" {
  type    = string
  default = "ipv4"
}

variable "stickiness_cookie_duration" {
  type    = number
  default = 86400
}

variable "stickiness_enabled" {
  type    = bool
  default = false
}

variable "stickiness_type" {
  type    = string
  default = "lb_cookie"
}

variable "target_type" {
  type    = string
  default = "ip"
}

variable "environment" {
  type    = string
  default = "my environment"
}

