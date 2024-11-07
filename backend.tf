terraform {
  backend "s3" {
    bucket         = "odility-s3"
    key            = "abhi/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}