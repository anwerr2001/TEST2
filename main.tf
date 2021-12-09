provider "aws" {
  version = "~> 3.67.0"
  region  = "us-east-1"
  profile = "default"

resource "aws_instance" "example" {
  ami           = "ami-0b17e49efb8d755c3"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0cf69f17137c3ebde"]
  subnet_id   = "subnet-0175c8240d3f9a986"
   tags = {
      "Name" = "TEST-EC2-5"  }
  }