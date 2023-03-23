variable "region" {
  type    = string
  default = "eu-west-1"
}
variable "availability_zones" {
  type    = list(any)
  default = ["eu-west-1a", "eu-west-1b"]
}

variable "vpc_id" {
  type    = string
  default = ""
}

variable "BaseSubnet" {
  type    = string
  default = ""
}

variable "private_subnet_a" {
  type    = string
  default = ""
}

variable "private_subnet_b" {
  type    = string
  default = ""
}

variable "tags" {
  type = map(any)
  default = {
    "Managed_By" = "Terraform"
  }
}