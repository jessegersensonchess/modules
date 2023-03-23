variable "subnet_id_a" {
  type    = string
  default = "my-subnet-a"
}

variable "subnet_id_b" {
  type    = string
  default = "my-subnet-b"
}

variable "enable_deletion_protection" {
  type    = bool
  default = false
}

variable "security-groups" {
  type    = list(string)
  default = ["my-security-groups"]
}

variable "subnets" {
  type    = list(string)
  default = ["my-subnets"]
}

variable "service" {
  type    = string
  default = "my-service"
}

variable "owner" {
  type    = string
  default = "owner"
}

variable "environment" {
  type    = string
  default = "dev"
}
