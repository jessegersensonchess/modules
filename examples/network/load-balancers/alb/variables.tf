variable "region" {
  type    = string
  default = "eu-west-2"
}

variable "ip_address_type" {
  type    = string
  default = "ipv4"
}

variable "internal" {
  type    = bool
  default = false
}

variable "enable_waf_fail_open" {
  type    = bool
  default = false
}

variable "desync_mitigation_mode" {
  type    = string
  default = "defensive"
}

variable "enable_http2" {
  type    = bool
  default = true
}

variable "enable_cross_zone_load_balancing" {
  type    = bool
  default = true
}

variable "drop_invalid_header_fields" {
  type    = bool
  default = false
}

variable "preserve_host_header" {
  type    = bool
  default = false
}

variable "load_balancer_type" {
  type    = string
  default = "application"
}

variable "managed_by" {
  type    = string
  default = "Terraform"
}

variable "subnet_id_a" {
  type    = string
  default = "my-subnet-a"
}

variable "subnet_id_b" {
  type    = string
  default = "my-subnet-b"
}

variable "enable_deletion_protection" {
  type    = bool
  default = false
}

variable "security-groups" {
  type    = list(string)
  default = ["my-security-groups"]
}

variable "subnets" {
  type    = list(string)
  default = ["my-subnets"]
}

variable "service" {
  type    = string
  default = "my-service"
}

variable "owner" {
  type    = string
  default = "owner"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "lb_idle_timeout" {
  type    = number
  default = 30
}
