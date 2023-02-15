# create a new ec2 instance
resource "aws_instance" "ec2" {
  ami           = local.ami
  instance_type = var.instance_type
  security_groups = var.security_groups
  tags = local.common_tags
}
