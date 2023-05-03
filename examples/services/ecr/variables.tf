variable "region" {
  type        = string
  default     = "eu-west-2"
  description = "cloud provider region resources will be placed, queried, etc"
}

variable "force_delete" {
  type    = bool
  default = false
}

variable "name" {
  type    = string
  default = "name-missing"
}

variable "image_tag_mutability" {
  type    = string
  default = "MUTABLE"
}

variable "encryption_type" {
  type    = string
  default = "KMS" # "AES256"
}

variable "scan_on_push" {
  type    = bool
  default = true
}

variable "environment" {
  type    = string
  default = "my-env"
}
