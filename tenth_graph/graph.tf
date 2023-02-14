# Create a EC2 instance
resource "aws_instance" "myec2" {
  ami = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
}

# Each EIP will be created once the EC2 instance is created
resource "aws_eip" "lb" {
  instance = aws_instance.myec2.id
  vpc      = true
}

# Security group will be created once the EIP is created
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.lb.private_ip}/32"]

  }
}