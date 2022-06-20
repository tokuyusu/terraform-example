
resource "aws_lb_listener" "app" {
  load_balancer_arn = aws_lb.app.arn
  port = "80"
  protocol = "HTTPS"
  internal = false

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.blue.arn
  }
}