terraform {
  backend "s3" {
    bucket = "terraform-maf"
    key    = "stage/erv/erv.tfstate"
    region = "us-east-1"
  }
}
