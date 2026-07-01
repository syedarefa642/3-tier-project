provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "syedarefa-terraform-state-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}