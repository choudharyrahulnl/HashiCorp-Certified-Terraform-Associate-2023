# create a new security group
resource "aws_security_group" "sg" {
  name        = "terraform-sg"
  description = "Security group for terraform"

  ingress {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

}

# create a new ec2 instance
resource "aws_instance" "ec2-1" {
  ami           = "ami-06c39ed6b42908a36" # Check in AWS console for the Free Tier AMI
  instance_type = var.instance_type_1
  tags = {
    Name = "terraform-ec2-1"
  }
}

resource "aws_instance" "ec2-2" {
  ami           = "ami-06c39ed6b42908a36" # Check in AWS console for the Free Tier AMI
  instance_type = var.instance_type_2["micro"]
  tags = {
    Name = "terraform-ec2-2"
  }
}

resource "aws_instance" "ec2-3" {
  ami           = "ami-06c39ed6b42908a36" # Check in AWS console for the Free Tier AMI
  instance_type = var.instance_type_3[0]
  tags = {
    Name = "terraform-ec2-3"
  }
}