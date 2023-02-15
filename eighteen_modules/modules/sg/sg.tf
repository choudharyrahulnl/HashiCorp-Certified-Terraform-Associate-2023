resource "aws_security_group" "ec2_sg" {
    name        = "ec2-sg"

    ingress {
      from_port   = 8443
      to_port     = 8443
      protocol    = "tcp"
      description = "Allow Inbound on 8443"
      cidr_blocks = ["0.0.0.0/0"]
    }

}

output "ec2_sg_id" {
  value = aws_security_group.ec2_sg.id
}