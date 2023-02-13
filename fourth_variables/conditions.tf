#resource "aws_instance" "dev" {
#  ami           = "ami-06c39ed6b42908a36" # Check in AWS console for the Free Tier AMI
#  instance_type = "t2.micro"
#  tags          = {
#    Name = "terraform-ec2-dev"
#  }
#  count = var.isDev ? 1 : 0
#}
#
#resource "aws_instance" "prod" {
#  ami           = "ami-06c39ed6b42908a36" # Check in AWS console for the Free Tier AMI
#  instance_type = "t2.large"
#  tags          = {
#    Name = "terraform-ec2-prod"
#  }
#  count = var.isDev ? 0 : 1
#}
