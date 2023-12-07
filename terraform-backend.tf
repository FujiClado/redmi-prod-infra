terraform {
  backend "s3" {
    bucket = "terraform.redmi-prod.project"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}



