variable "region" {
  type    = string
  default = "eu-west-2"
}

#variable "cluster-name" {
#  type    = string
#  default = "my-cluster-name"
#}

#variable "description" {
#  type    = string
#  default = "cluster description"
#}

variable "environment" {
  type    = string
  default = "dev"
}

#variable "containerInsights-value" {
#  type    = string
#  default = "disabled" # "enabled"
#}

variable "owner" {
  type    = string
  default = "Jesse Gersenson"
}

variable "created-by" {
  type    = string
  default = "Terraform"
}

variable "managed_by" {
  type    = string
  default = "Terraform"
}

#variable "capacity-providers" {
#  type    = list(string)
#  default = ["FARGATE", "FARGATE_SPOT"]
#}
#
#variable "default-capacity-provider" {
#  type    = string
#  default = "FARGATE_SPOT"
#}
#
#variable "logging" {
#  type    = string
#  default = "DEFAULT" # NONE DEFAULT OVERRIDE
#}
#
#variable "service-discovery-namespace-arn" {
#  type    = string
#  default = "development"
#}
#
variable "service" {
  type    = string
  default = "my-service"
}
