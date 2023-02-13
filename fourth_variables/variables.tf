variable "vpn_ip" {
  default = "116.30.45.50/32"
}

variable "instance_type" {
  type = string
}

variable "instance_names" {
  type    = list(string)
  default = ["dev-ec2-instance", "stg-ec2-instance", "prod-ec2-instance"]
}

variable "instance_type_1" {
  type = string
}

variable "instance_type_2" {
  type = map(string)
}

variable "instance_type_3" {
  type = list(string)
}

variable "isDev" {}