variable "region" {
  default = "eu-central-1"
}

variable "tags" {
  type = list
  default = ["firstec2","secondec2"]
}

variable "ami" {
  type = map
  default = {
    "eu-central-1" = "ami-06c39ed6b42908a36"
    "eu-central-2" = "ami-06c39ed6b42908a36"
    "eu-central-3" = "ami-06c39ed6b42908a36"
  }
}