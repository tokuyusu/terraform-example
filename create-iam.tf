resource "aws_iam_user" "admin" {
  name = "admin"
}

resource "aws_iam_access_key" "admin" {
  user = aws_iam_user.admin.name
}

resource "aws_iam_user_login_profile" "admin" {
  user    = aws_iam_user.admin.name
  pgp_key = "test"
}