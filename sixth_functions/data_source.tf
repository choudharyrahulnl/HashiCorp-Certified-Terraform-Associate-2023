# data source to get the latest free tier AMI
data "aws_ami" "free_tier_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

# create a new ec2 instance
resource "aws_instance" "ec2" {
  ami           = data.aws_ami.free_tier_ami.id
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-ec2"
  }
}
