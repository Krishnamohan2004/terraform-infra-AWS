terraform {
  backend "s3" {
    bucket       = "rohit-terraform-state-141964413005"
    key          = "aws-devops-project/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
