module "ec2" {
  source = "../../../modules/ec2"
  instance_type = "t2.micro"
  security_groups = ["default"]
}

module "sg" {
  source = "../../../modules/sg"
}

resource "aws_instance" "web" {
    ami = "ami-06c39ed6b42908a36"
    instance_type = "t2.micro"
    vpc_security_group_ids = [module.sg.ec2_sg_id]
}

## terraform registry module
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  ami                    = "ami-06c39ed6b42908a36"
  instance_type          = "t2.micro"
  subnet_id = "subnet-0b8c888747c68e97f"
}