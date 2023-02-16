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
  access_key = var.ACCESS_KEY
  secret_key = var.SECRET_KEY
}

provider "aws" {
  alias = "mumbai" # alias is used to deploy in multiple regions
  region     = "ap-south-1"
  profile = "Personal" # /Users/taachra0/.aws & vi credentials. Profile is used to deploy in multiple accounts
  access_key = var.ACCESS_KEY
  secret_key = var.SECRET_KEY
}

# create variables for the access and secret key
variable "ACCESS_KEY" { type = string }
variable "SECRET_KEY" { type = string }