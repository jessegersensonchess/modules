variable "environment" {
  type        = string
  description = "environment. valid values are: dev, stage, prod"

  validation {
    condition     = contains(["dev", "stage", "prod"], var.environment)
    error_message = "Valid values for environment are (dev, stage, prod)"
  }
}

variable "region" {
  type = string
  #default = "us-east-2"
  default = "eu-west-1"
}



variable "bucket_versioning_enabled" {
  type    = bool
  default = true
}
