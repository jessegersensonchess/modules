terraform {
  # This module is tested with Terraform 1.x.x. However, to make upgrading easier, we set 1.0.0 as the minimum version.
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = var.region
}

module "ssl-certificate" {
  source = "../../../modules/management/certificates"

  description = "${var.service} load balancer and target groups for ${var.environment}"
  environment = var.environment
  service     = var.service
  managed_by  = var.managed_by

  domain-name       = var.domain-name
  validation-method = var.validation-method

  key_algorithm = var.key_algorithm
  #owner                      = var.owner

}

