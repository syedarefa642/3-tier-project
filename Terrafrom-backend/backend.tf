terraform {
  backend "s3" {
    bucket         = "syedarefa-terraform-state-bucket"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}