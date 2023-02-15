resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH into VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Outbound Allowed"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


# create a new ec2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-06c39ed6b42908a36" # Check in AWS console for the Free Tier AMI
  instance_type = "t2.micro"
  key_name      = "terraform-key"
  tags          = {
    Name = "terraform-ec2"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("/Users/taachra0/Work/POC/Cloud/AWS/terraform-key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    when   = create
    on_failure = fail
    inline = [
      "sudo yum -y install nano"
    ]
  }

  provisioner "remote-exec" {
    when   = destroy
    on_failure = continue
    inline = [
      "sudo yum -y remove nano"
    ]
  }
}
