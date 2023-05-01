variable "force_delete" {
  type        = bool
  default     = false
  description = "allow container registry to be deleted even if it contains images"

}

variable "name" {
  type        = string
  default     = "name-missing"
  description = "name of the ECR repository"
}

variable "image_tag_mutability" {
  type    = string
  default = "MUTABLE"
}

variable "encryption_type" {
  type    = string
  default = "AES256"
}

variable "scan_on_push" {
  type        = bool
  default     = false
  description = "bool run security scan when image is pushed"
}

variable "environment" {
  type    = string
  default = "dev"
}
