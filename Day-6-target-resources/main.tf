provider "aws" {
  
}

resource "aws_instance" "name" {
    ami = "ami-055a9df0c8c9f681c"
    instance_type = "t2.micro"
    availability_zone = "us-west-2b"
  tags = {
    name="test"
  }
  
}

resource "aws_s3_bucket" "name" {
    bucket = "hhgfgtyfrtsedgggjkbuyuygg"
  
}