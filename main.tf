provider "aws" {
  region = "us-east-1"
}


module "ec2" {
    source = "./module/ec2"
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"

}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "odility-s3" 
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}