variable "region" {
  default = "eu-west-1"
}

variable "network_basename" {
  default = "Common"
}

variable "availability_zones" {
  default = ["eu-west-1a", "eu-west-1b"]
}

variable "environment" {
  default = "dev"
}
