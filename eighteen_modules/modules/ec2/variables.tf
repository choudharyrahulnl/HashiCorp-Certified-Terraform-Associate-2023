variable "instance_type" {
  type = string
}

variable "security_groups" {
  type = list(string)
}

locals {
  ami         = "ami-06c39ed6b42908a36"
  common_tags = {
    environment = "dev"
    team        = "devops"
  }
}