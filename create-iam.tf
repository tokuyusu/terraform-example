resource "aws_iam_user" "admin" {
  name = "admin"
}

resource "aws_iam_access_key" "admin" {
  user = aws_iam_user.admin.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_user_login_profile" "admin" {
  user    = aws_iam_user.admin.name
  pgp_key = "test"
}

resource "aws_lb_listener" "app" {
  load_balancer_arn = aws_lb.app.arn
  port = "80"
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.blue.arn
  }
}