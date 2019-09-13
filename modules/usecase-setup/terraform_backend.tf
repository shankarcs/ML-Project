terraform {
  backend "s3" {
    bucket = "terraform-maf"
    key    = "moduals/usecase/terraform.tfstate"
    region = "us-east-1"
  }
}
