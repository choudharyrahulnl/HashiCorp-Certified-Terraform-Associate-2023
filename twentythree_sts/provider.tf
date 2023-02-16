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

  # This use access key, secret key and session token to create resources
  assume_role {
    role_arn = "role-arn-will-be-here"
    session_name = "any-name"
  }
}