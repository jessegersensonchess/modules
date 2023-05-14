variable "domain-name" {
  type        = string
  default     = "mydomain.name"
  description = "(Required) Domain name for which the certificate should be issued"
}

variable "key_algorithm" {
  type        = string
  default     = "RSA_2048"
  description = " (Optional) Specifies the algorithm of the public and private key pair that your Amazon issued certificate uses to encrypt data. See ACM Certificate characteristics for more details."
}

variable "logging-preference" {
  type        = string
  default     = "ENABLED"
  description = "(Optional) Whether certificate details should be added to a certificate transparency log. Valid values are ENABLED or DISABLED. See https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency for more details"
}

variable "validation-method" {
  type        = string
  default     = "DNS"
  description = "Which method to use for validation. DNS or EMAIL are valid, NONE can be used for certificates that were imported into ACM and then into Terraform."
}

variable "description" {
  type        = string
  default     = "description"
  description = "description of what cert is used for"
}

variable "service" {
  type        = string
  default     = "service"
  description = "(optional) Service which uses this resource. Value appears as a tag with key Service"
}

variable "environment" {
  type        = string
  default     = "env"
  description = "(optional) Environment of the resource. Value appears as a tag with key Environment"

}

variable "managed_by" {
  type        = string
  default     = "Terraform"
  description = "entity managing this resource. Value appears as a meta tag with key Managed_By"

}

variable "owner" {
  type        = string
  default     = "owner"
  description = "(optional) Owner of the resource. Value appears as a tag with key Owner"

}



