terraform {
  backend "s3" {
    bucket = "terraform-state-100200"
    key    = "state/terraform.tfstate"
    region = "ap-south-1"
    }
}