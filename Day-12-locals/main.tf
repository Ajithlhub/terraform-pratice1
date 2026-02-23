locals {
  region = "us-east-1"
  instance_type = "t2.micro"

}


resource "aws_instance" "name" {
    ami = "ami-055a9df0c8c9f681c"
    instance_type = local.instance_type
  region = local.region
}