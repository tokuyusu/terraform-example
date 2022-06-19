resource "aws_iam_user" "root" {
  name = "root"
  path = "/root/"
}

resource "aws_iam_access_key" "root" {
  user = aws_iam_user.root.name
}
