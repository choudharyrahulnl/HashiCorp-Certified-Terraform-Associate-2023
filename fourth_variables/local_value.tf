locals {
  common_tags = {
    Environment = "dev"
    Owner       = "DevOps Team"
  }
}

resource "aws_instance" "dev" {
  ami           = "ami-06c39ed6b42908a36" # Check in AWS console for the Free Tier AMI
  instance_type = "t2.micro"
  tags          = local.common_tags
  count = var.isDev ? 1 : 0
}

# create elastic ip
resource "aws_eip" "eip" {
  vpc = true
  tags = local.common_tags
}