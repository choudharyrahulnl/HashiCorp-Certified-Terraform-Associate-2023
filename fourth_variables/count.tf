## using count to create multiple instances with the same configuration
#resource "aws_instance" "ec2" {
#  ami           = "ami-06c39ed6b42908a36" # Check in AWS console for the Free Tier AMI
#  instance_type = var.instance_type
#  tags = {
#    Name = "terraform-ec2-${count.index}" # create a unique name for each instance start from 0
#  }
#  count = 2 # create 2 ec2 instances
#}
#
## using count to create multiple instances with different names
#resource "aws_instance" "ec2-0" {
#  ami           = "ami-06c39ed6b42908a36" # Check in AWS console for the Free Tier AMI
#  instance_type = var.instance_type
#  tags = {
#    Name = var.instance_names[count.index] # create a unique name for each instance start from 0
#  }
#  count = 3 # create 2 ec2 instances
#}