terraform {
  backend "s3" {
    bucket = "terraform-maf"
    key    = "stage/churn/churn.tfstate"
    region = "us-east-1"
  }
}

