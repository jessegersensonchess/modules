variable "path" {
  type        = string
  default     = "/"
  description = "Directory on the Amazon EFS file system that the access point provides access to."

}

variable "filesystem_id" {
  type        = string
  default     = "filesystem_id_here"
  description = "ID of the file system for which the access point is intended."
}

variable "security_groups" {
  type        = list(string)
  default     = ["security_group1", "security_group2"]
  description = "not used"
}

variable "subnet_id" {
  type        = string
  default     = "my-subnet"
  description = "not used"
}

variable "owner" {
  type        = string
  default     = "Jesse Gersenson"
  description = "(optional) Owner of the resource. Value appears as a tag with key Owner"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "(optional) Environment of the resource. Value appears as a tag with key Environment"
}

variable "service" {
  type        = string
  default     = "ws-mxv"
  description = "(optional) Service which uses this resource. Value appears as a tag with key Service"
}

variable "folder_name" {
  type        = string
  default     = "/"
  description = "not in use"
}
