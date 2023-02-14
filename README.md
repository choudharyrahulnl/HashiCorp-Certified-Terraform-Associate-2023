# HashiCorp-Certified-Terraform-Associate-2023

terraform init : This will check you provider & download related plugins for the Providers ex. in our case it will be AWS Provider

terraform plan: This will show what will going to be created/updated/deleted

terraform apply: This will create the infrastructure resources

terraform destroy: This will destroy everything

terraform destroy -target <resource-type>.<resource-name> : This will destroy only the resource example terraform destroy -target  aws_instance.ec2 Where ec2 is the local name for terraform
