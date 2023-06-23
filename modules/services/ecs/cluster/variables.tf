variable "cluster-name" {
  type        = string
  default     = "my-cluster-name"
  description = "Name of the cluster (up to 255 letters, numbers, hyphens, and underscores)"
}

variable "containerInsights-value" {
  type        = string
  default     = "disabled"
  description = "The value to assign to the setting. Valid values are enabled and disabled."
}

variable "capacity-providers" {
  type        = list(string)
  default     = ["FARGATE", "FARGATE_SPOT"]
  description = "Set of names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE_SPOT"
}

variable "default-capacity-provider" {
  type        = string
  default     = "FARGATE_SPOT"
  description = "Name of the default capacity provider."
}

variable "capacity_provider_weight" {
  type        = number
  default     = 100
  description = "The relative percentage of the total number of launched tasks that should use the specified capacity provider. The weight value is taken into consideration after the base count of tasks has been satisfied"
}

variable "capacity_provider_base" {
  type        = number
  default     = 2
  description = "The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined"
}


variable "logging" {
  type        = string
  default     = "DEFAULT" # NONE DEFAULT OVERRIDE
  description = "The log setting to use for redirecting logs for your execute command results. Valid values are NONE, DEFAULT, and OVERRIDE."
}

#variable "service-discovery-namespace-arn" {
#  type        = string
#  default     = "development"
#  description = "The ARN that Amazon Route 53 assigns to the namespace when you create it. See https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/service_discovery_http_namespace.html"
#}
#
variable "service" {
  type        = string
  default     = "my-service"
  description = "(optional) Service which uses this resource. Value appears as a tag with key Service"
}

variable "description" {
  type        = string
  default     = "cluster description"
  description = "basic description of resource. Value appears as a meta tag with key Description"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "(optional) Environment of the resource. Value appears as a tag with key Environment"
}

variable "owner" {
  type        = string
  default     = "Jesse Gersenson"
  description = "(optional) Owner of the resource. Value appears as a tag with key Owner"
}

variable "created-by" {
  type        = string
  default     = "Terraform"
  description = "(optional) Entity which created the resource. Value appears as a tag with key Created_By"
}

variable "managed-by" {
  type        = string
  default     = "Terraform"
  description = "(optional) Environment of the resource. Value appears as a tag with key Environment"
}

