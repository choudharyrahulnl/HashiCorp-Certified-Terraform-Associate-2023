data "terraform_remote_state" "eip" {
  backend = "s3"

  config = {
    bucket = "tf-bucket-2205"
    key    = "tf-state/terraform.tfstate"
    region = "eu-central-1"
  }
}