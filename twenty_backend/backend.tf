# Create a bucket for the state file & lock table in DynamoDB
terraform {
  backend "s3" {
    bucket = "tf-bucket-2205"
    key    = "tf-state/terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "tf-state-lock"
  }
}