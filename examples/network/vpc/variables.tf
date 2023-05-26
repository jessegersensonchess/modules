variable "region" {
  type    = string
  default = "eu-west-2"
}

variable "network_basename" {
  type    = string
  default = "terratest-disposable"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "base_subnet" {
  type    = string
  default = "10.90"
}

variable "enable_network_address_usage_metrics" {
  type    = bool
  default = false
}

variable "managed_by" {
  type    = string
  default = "Terraform"
}

