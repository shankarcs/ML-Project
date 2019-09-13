terraform {
  backend "s3" {
    bucket = "terraform-maf"
    key    = "moduals/initial/terraform.tfstate"
    region = "us-east-1"
  }
}

