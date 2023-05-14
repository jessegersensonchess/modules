variable "public_subnet_a" {
  type        = string
  default     = "mysubnet"
  description = "public subnet"
}
variable "public_subnet_b" {
  type        = string
  default     = "my-subnet"
  description = "public subnet"
}

variable "encrypted" {
  type        = bool
  default     = true
  description = "true encrypts the filesystem"
}

variable "throughput_mode" {
  type        = string
  default     = "bursting"
  description = "defines EFS disk throughput performance"
}

variable "performance_mode" {
  type        = string
  default     = "generalPurpose"
  description = "defines EFS disk performance"
}

variable "safe_to_delete" {
  type        = string
  default     = "yes"
  description = "informational only. Used to inform AWS admins whether this resource can be deleted. Value appears as a meta tag with key safe_to_delete"
}

variable "managed_by" {
  type        = string
  default     = "Terraform"
  description = "entity managing this resource. Value appears as a meta tag with key Managed_By"
}

variable "security_groups" {
  type        = list(string)
  default     = ["security_group1", "security_group2"]
  description = "security groups with access to this EFS"
}

variable "subnet_id" {
  type        = string
  default     = "my-subnet"
  description = "subnet name"
}

variable "filesystem_id" {
  type        = string
  default     = "my-subnet"
  description = "aws_efs_file_system.filesystem.id"
}

variable "owner" {
  type        = string
  default     = "Jesse Gersenson"
  description = "owner of this EFS"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "environment of this resource. Value appears as a meta tag with key Environment"
}

variable "service" {
  type        = string
  default     = "ws-mxv"
  description = "service which created this EFS"
}

variable "folder_name" {
  type        = string
  default     = "/"
  description = "path for mounting EFS. Review implementation before changing this value"
}
