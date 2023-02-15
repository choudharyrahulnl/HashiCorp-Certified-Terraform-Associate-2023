## provider.tf is required to connect to aws as it has the aws access key and secret key

## terraform registry module
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  ami                    = "ami-06c39ed6b42908a36"
  instance_type          = "t2.micro"
  subnet_id = "subnet-0b8c888747c68e97f"
}