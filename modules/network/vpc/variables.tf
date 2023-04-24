variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "network_basename" {
  type    = string
  default = "Common"
}

variable "availability_zones" {
  default = ["eu-west-1a", "eu-west-1b"]
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "base_subnet" {
  type    = string
  default = "10.10"
}

variable "assign_generated_ipv6_cidr_block" {
  type    = bool
  default = false
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "enable_dns_support" {
  type    = bool
  default = true
}

variable "enable_network_address_usage_metrics" {
  type    = bool
  default = false
}

variable "instance_tenancy" {
  type    = string
  default = "default"
}

variable "private_subnet_a_map_public_ip_on_launch" {
  type    = bool
  default = false
}

variable "private_subnet_b_map_public_ip_on_launch" {
  type    = bool
  default = false
}

variable "public_subnet_a_map_public_ip_on_launch" {
  type    = bool
  default = true
}

variable "public_subnet_b_map_public_ip_on_launch" {
  type    = bool
  default = true
}
