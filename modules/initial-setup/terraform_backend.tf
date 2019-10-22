terraform {
  backend "s3" {
    bucket = "terraform-maf"
    key    = "modules/initial/terraform.tfstate"
    region = "us-east-1"
  }
}

