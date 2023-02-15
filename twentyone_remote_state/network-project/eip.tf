resource "aws_eip" "eip" {
  vpc = true
}

output "eip_address" {
  value = aws_eip.eip.public_ip
}
