terraform {
  # This module is tested with Terraform 1.x.x. However, to make upgrading easier, we set 1.0.0 as the minimum version.
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = var.region
}

module "sns" {
  source         = "../../../modules/services/sns"
  sns_topic_name = var.sns_topic_name
  sns_protocol   = var.sns_protocol
  email_endpoint = var.email_endpoint
  region         = var.region
}

