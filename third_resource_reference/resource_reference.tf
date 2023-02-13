# create elastic ip
resource "aws_eip" "eip" {
  vpc = true
}

# create a new ec2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-06c39ed6b42908a36" # Check in AWS console for the Free Tier AMI
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-ec2"
  }
}

# associate elastic ip with ec2 instance
resource "aws_eip_association" "eip_ec2_association" {
  instance_id   = aws_instance.ec2.id
  allocation_id = aws_eip.eip.id
}

# create a new security group
resource "aws_security_group" "sg" {
  name        = "terraform-sg"
  description = "Security group for terraform"
  ingress {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
    cidr_blocks = ["${aws_eip.eip.public_ip}/32"]
  }
}