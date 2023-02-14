resource "aws_iam_user" "user" {
  name  = "iamuser.${count.index}"
  path  = "/system/"
  count = 3

}

# Output the ARN of the user
# value will be a list of ARNs
output "iam_users_arn" {
  value = aws_iam_user.user[*].arn
}