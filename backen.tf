terraform {
  backend "s3" {
    bucket = "rohit-terraform-state-141964413005"
    key    = "env/terraform.tfstate"
    region = "ap-south-1"
  }
}
