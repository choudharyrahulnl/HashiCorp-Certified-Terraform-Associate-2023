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