variable "users" {
    type = "list"
    default = ["user1", "user2"]
}

# create iam user with count: If we add a new user at beginning of the list, it will recreate all users
resource "aws_iam_user" "user" {
  name = var.users[count.index]
  count = 2
  path = "/system/"
}

# create iam user with for_each: If we add a new user at beginning of the list, it will not recreate all users
# because it will not use index to create the resource name instead it will use the key of the map
resource "aws_iam_user" "user_foreach" {
  for_each = toset(var.users)
  name = each.key
  path = "/system/"
}