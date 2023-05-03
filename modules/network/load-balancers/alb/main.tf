resource "aws_lb" "lb" {
  name                             = upper("alb-${var.service}")
  desync_mitigation_mode           = var.desync_mitigation_mode
  drop_invalid_header_fields       = var.drop_invalid_header_fields
  enable_cross_zone_load_balancing = var.enable_cross_zone_load_balancing
  enable_deletion_protection       = var.enable_deletion_protection
  enable_http2                     = var.enable_http2
  enable_waf_fail_open             = var.enable_waf_fail_open
  idle_timeout                     = var.lb_idle_timeout
  internal                         = var.internal
  ip_address_type                  = var.ip_address_type
  load_balancer_type               = var.load_balancer_type
  #  xff_header_processing_mode       = var.xff_header_processing_mode
  #  enable_xff_client_port           = var.enable_xff_client_port

  preserve_host_header = var.preserve_host_header
  security_groups      = var.security-groups

  subnet_mapping {
    subnet_id = var.subnet_id_a
  }

  subnet_mapping {
    subnet_id = var.subnet_id_b
  }

  tags = {
    Managed_By  = var.managed_by
    Owner       = var.owner
    Service     = var.service
    Environment = var.environment
  }

}

