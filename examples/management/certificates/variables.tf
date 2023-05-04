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
  type        = string
  default     = "DNS"
  description = "Way AWS certificate is approved"
}

variable "description" {
  type        = string
  default     = "description"
  description = "used for AWS tagging, Description"
}

variable "service" {
  type        = string
  default     = "service"
  description = "used for AWS tagging, Service"
}

variable "environment" {
  type        = string
  default     = "env"
  description = "used for AWS tagging, Environment"
}

variable "owner" {
  type        = string
  default     = "owner"
  description = "used for AWS tagging, Owner"
}

variable "managed_by" {
  type        = string
  default     = "Terraform"
  description = "used for AWS tagging, Managed_By"
}

