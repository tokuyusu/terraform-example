resource "aws_iam_user" "root" {
  name = "root"
  path = "/root/"
}

resource "aws_iam_access_key" "root" {
  user = root
}

resource "aws_iam_user_login_profile" "example" {
  user    = root
}