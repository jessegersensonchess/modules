variable "force_delete" {
  type        = bool
  default     = false
  description = "allow container registry to be deleted even if it contains images"
}

variable "name" {
  type        = string
  default     = "default-name"
  description = "ECR repository name"
}

variable "image_tag_mutability" {
  type        = string
  default     = "MUTABLE"
  description = "(Optional) The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE."
}

variable "encryption_type" {
  type        = string
  default     = "AES256"
  description = "(Optional) The encryption type to use for the repository. Valid values are AES256 or KMS."
}

variable "scan_on_push" {
  type        = bool
  default     = false
  description = "Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)."
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "(Optional) Environment of the resource. Value appears as a tag with key Environment"
}

variable "managed_by" {
  type        = string
  default     = "Terraform"
  description = "entity managing this resource. Value appears as a meta tag with key Managed_By"
}

