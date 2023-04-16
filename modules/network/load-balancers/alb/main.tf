resource "aws_lb" "lb" {
  name                             = upper("alb-${var.service}")
  desync_mitigation_mode           = "defensive"
  drop_invalid_header_fields       = "false"
  enable_cross_zone_load_balancing = "true"
  enable_deletion_protection       = var.enable_deletion_protection
  enable_http2                     = "true"
  enable_waf_fail_open             = "false"
  idle_timeout                     = var.lb_idle_timeout # "60"
  internal                         = "false"
  ip_address_type                  = "ipv4"
  load_balancer_type               = "application"

  preserve_host_header = "false"
  security_groups      = var.security-groups

  subnet_mapping {
    subnet_id = var.subnet_id_a
  }

  subnet_mapping {
    subnet_id = var.subnet_id_b
  }
  tags = {
    Managed_By = "Terraform"
    Owner      = var.owner
    Service    = var.service
    Env        = var.environment
  }

}

