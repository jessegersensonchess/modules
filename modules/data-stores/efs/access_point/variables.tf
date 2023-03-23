variable "path" {
  type    = string
  default = "/"
}

variable "filesystem_id" {
  type        = string
  default     = "filesystem_id_here"
  description = "aws_efs_file_system.filesystem.id"
}

variable "security_groups" {
  type    = list(string)
  default = ["security_group1", "security_group2"]
}

variable "subnet_id" {
  type    = string
  default = "my-subnet"
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

variable "folder_name" {
  type    = string
  default = "/"
}
