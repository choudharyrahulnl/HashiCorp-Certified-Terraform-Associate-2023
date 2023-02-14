# create a new ec2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-06c39ed6b42908a36" # Check in AWS console for the Free Tier AMI
  instance_type = "t2.micro"
  key_name      = "terraform-key"
  tags = {
    Name = "terraform-ec2"
  }

  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file("/Users/taachra0/Work/POC/Cloud/AWS/terraform-key.pem")
    host = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install nginx1 -y",
      "sudo systemctl start nginx",
    ]
  }
}
