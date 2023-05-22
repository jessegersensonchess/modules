terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.64.0"
    }
  }
}

resource "aws_lb_target_group" "target_group" {
  deregistration_delay = var.deregistration_delay

  ip_address_type               = var.ip_address_type
  load_balancing_algorithm_type = var.load_balancing_algorithm_type
  name                          = var.target_group_name
  port                          = var.port
  protocol                      = var.protocol
  protocol_version              = var.protocol_version
  slow_start                    = var.slow_start

  target_type = var.target_type
  vpc_id      = var.vpc_id

  health_check {
    enabled             = var.health_check_enabled
    interval            = var.health_check_interval
    matcher             = var.health_check_matcher
    path                = var.health_check_path
    port                = var.health_check_port
    protocol            = var.health_check_protocol
    timeout             = var.health_check_timeout
    healthy_threshold   = var.health_check_healthy_threshold
    unhealthy_threshold = var.health_check_unhealthy_threshold
  }

  lifecycle {
    create_before_destroy = true
  }

  stickiness {
    cookie_duration = var.stickiness_cookie_duration
    enabled         = var.stickiness_enabled
    type            = var.stickiness_type
  }

  tags = {
    safe_to_delete    = var.safe_to_delete
    Managed_By        = var.managed_by
    Owner             = var.owner
    Service           = var.target_group_name
    Target_group_name = var.target_group_name
    Env               = var.environment
  }
}
