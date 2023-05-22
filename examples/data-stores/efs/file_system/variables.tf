variable "public_subnet_a" {
  type    = string
  default = "mysubnet"
}
variable "public_subnet_b" {
  type    = string
  default = "my-subnet"
}

variable "encrypted" {
  type    = bool
  default = true
}

variable "throughput_mode" {
  type    = string
  default = "bursting"
}

variable "performance_mode" {
  type    = string
  default = "generalPurpose"
}

variable "safe_to_delete" {
  type    = string
  default = "yes"
}

variable "managed_by" {
  type    = string
  default = "Terraform"
}

variable "security_groups" {
  type    = list(string)
  default = ["security_group1", "security_group2"]
}

variable "subnet_id" {
  type    = string
  default = "my-subnet"
}

variable "filesystem_id" {
  type        = string
  default     = "my-subnet"
  description = "aws_efs_file_system.filesystem.id"
}

variable "owner" {
  type    = string
  default = "Jesse Gersenson"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "service" {
  type    = string
  default = "ws-mxv"
}

