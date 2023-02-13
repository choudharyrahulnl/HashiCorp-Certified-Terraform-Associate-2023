# configure the aws provider
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.54.0"
    }
  }
}

provider "aws" {
  region     = "eu-central-1"
  access_key = var.TF_ACCESS_KEY
  secret_key = var.TF_SECRET_KEY
}

# create variables for the access and secret key
variable "TF_ACCESS_KEY" { type = string }
variable "TF_SECRET_KEY" { type = string }