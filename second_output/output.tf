# create elastic ip
resource "aws_eip" "eip" {
  vpc = true
}

output "eip_output" {
  value = aws_eip.eip.public_ip
}

# create s3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-bucket-2205"
}

output "bucket_output" {
  value = aws_s3_bucket.bucket.bucket_domain_name
}