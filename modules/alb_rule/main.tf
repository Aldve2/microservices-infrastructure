resource "aws_lb_target_group" "tg" {
  name        = var.name
  port        = var.port
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    path = var.health_check_path
    port = var.health_check_port
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_lb_listener_rule" "rule" {
  listener_arn = var.listener_arn
  priority     = var.priority

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }

  condition {
    path_pattern {
      values = [var.path]
    }
  }
}
