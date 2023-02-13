variable "vpn_ip" {
  default = "116.30.45.50/32"
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