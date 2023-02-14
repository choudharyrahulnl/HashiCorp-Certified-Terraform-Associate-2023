# create iam user
resource "aws_iam_user" "user" {
  name = "iam-user.${count.index}"
  count = 2
  path = "/system/"
}

output "iam_users_name" {
  value = aws_iam_user.user[*].name
}

output "iam_users_arn" {
  value = aws_iam_user.user[*].arn
}

output "combined_name_arn" {
  value = zipmap(aws_iam_user.user[*].name, aws_iam_user.user[*].arn)
}