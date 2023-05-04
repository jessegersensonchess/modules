variable "region" {
  type    = string
  default = "eu-west-2"
}

variable "domain-name" {
  type    = string
  default = "mydomain.name"
}

variable "key_algorithm" {
  type    = string
  default = "RSA_2048"
}

variable "logging-preference" {
  type    = string
  default = "ENABLED"
}

variable "validation-method" {
  type    = string
  default = "DNS"
}

variable "description" {
  type    = string
  default = "description"
}

variable "service" {
  type    = string
  default = "service"
}

variable "environment" {
  type    = string
  default = "env"
}

variable "owner" {
  type    = string
  default = "owner"
}

variable "managed_by" {
  type    = string
  default = "Terraform"
}

