provider "aws" {
  region = "us-east-1"
}


module "ec2" {
    source = "./module/ec2"
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"

}
