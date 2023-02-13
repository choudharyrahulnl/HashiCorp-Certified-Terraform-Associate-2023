# create a new ec2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-06c39ed6b42908a36" # Check in AWS console for the Free Tier AMI
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-ec2"
  }
}
