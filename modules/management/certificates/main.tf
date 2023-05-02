 resource "aws_acm_certificate" "ssl-certificate" {
  domain_name   = var.domain-name
  key_algorithm = var.key-algorithm

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
  }

  tags_all = {
    name        = var.domain-name
    Description = var.description
    Environment = var.environment
    Service     = var.service
  }

  validation_method = var.validation-method
}
