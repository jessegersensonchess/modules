variable "order" {
  type    = number
  default = 1
}

variable "target_group_arn" {
  type    = string
  default = "target_group_arn"
}

variable "type" {
  type    = string
  default = "forward"
}

variable "path_pattern" {
  type    = list(string)
  default = ["/path1", "/path2/*"]
}

variable "listener_arn" {
  type    = string
  default = "listener_arn"
}

variable "priority" {
  type    = number
  default = 1
}
