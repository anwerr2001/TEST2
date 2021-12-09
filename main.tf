provider "aws" {
  version = "~> 3.67.0"
  region  = "us-east-1"
  profile = "default"

resource "aws_instance" "example" {
  ami           = "ami-0b17e49efb8d755c3"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-05c6053ba0391e4ed"]
  subnet_id   = "subnet-085fb56d2dc3965f1"
   tags = {
      "Name" = "TEST-EC2-5"  }
  }