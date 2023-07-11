terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #      version = "~> 4.64.0"
    }
  }
}

resource "aws_acm_certificate" "ssl-certificate" {
  domain_name   = var.domain-name
  key_algorithm = var.key_algorithm

  options {
    certificate_transparency_logging_preference = var.logging-preference
  }

  lifecycle {
    create_before_destroy = true
  }

  subject_alternative_names = [var.domain-name]

  tags = {
    name        = var.domain-name
    Description = var.description
    Environment = var.environment
    Service     = var.service
    Owner       = var.owner
    Managed_By  = var.managed_by
    hi          = "adsflkj"
  }

  validation_method = var.validation-method
}
