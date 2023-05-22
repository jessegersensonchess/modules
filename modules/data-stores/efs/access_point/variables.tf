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

