# create a new security group
#resource "aws_security_group" "sg" {
#  name        = "terraform-sg"
#  description = "Security group for terraform"
#
#  ingress {
#    from_port = 443
#    to_port   = 443
#    protocol  = "tcp"
#    cidr_blocks = ["0.0.0./0"]
#  }
#
#  ingress {
#    from_port = 80
#    to_port   = 80
#    protocol  = "tcp"
#    cidr_blocks = ["0.0.0./0"]
#  }
#
#  ingress {
#    from_port = 22
#    to_port   = 22
#    protocol  = "tcp"
#    cidr_blocks = ["0.0.0./0"]
#  }
#
#}

variable "sg_ports" {
  type = list
  default= [443, 80, 22]
}

#resource "aws_security_group" "sg_dynamic" {
#  name        = "terraform-sg"
#  description = "Security group for terraform"
#
#  dynamic ingress {
#    for_each = var.sg_ports
#    content {
#      from_port = ingress.value
#      to_port   = ingress.value
#      protocol  = "tcp"
#      cidr_blocks = ["116.30.45.50/32"]
#    }
#  }
#}

resource "aws_security_group" "sg_dynamic_2" {
  name        = "terraform-sg"
  description = "Security group for terraform"

  dynamic ingress {
    for_each = var.sg_ports
    iterator = port
    content {
      from_port = port.value
      to_port   = port.value
      protocol  = "tcp"
      cidr_blocks = ["116.30.45.50/32"]
    }
  }
}