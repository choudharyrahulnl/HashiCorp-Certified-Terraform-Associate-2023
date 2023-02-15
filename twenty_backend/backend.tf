terraform {
  backend "s3" {
    bucket = "tf-bucket-2205"
    key    = "tf-state/terraform.tfstate"
    region = "eu-central-1"
  }
}