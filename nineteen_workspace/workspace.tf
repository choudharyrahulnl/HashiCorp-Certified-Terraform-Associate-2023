# create a new ec2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-06c39ed6b42908a36" # Check in AWS console for the Free Tier AMI
  instance_type = lookup(var.instance_type,terraform.workspace)
  tags = {
    Name = "terraform-ec2"
  }
}

variable "instance_type" {
  type = map
  default = {
    default = "t2.micro"
    dev = "t2.small"
    prod = "t2.large"
  }
}



################################
########## COMMANDS ############
################################

# terraform workspace show
# terraform plan

# terraform workspace new dev
# terraform plan

# terraform workspace new prod
# terraform plan
