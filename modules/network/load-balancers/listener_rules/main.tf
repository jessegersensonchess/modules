resource "aws_lb_listener_rule" "rule" {
  action {
    #    order            = var.order
    target_group_arn = var.target_group_arn
    type             = var.type
  }

  condition {
    path_pattern {
      values = var.path_pattern
    }
  }

  listener_arn = var.listener_arn
  priority     = var.priority

}
