provider "aws" {
  
}

resource "aws_instance" "name" {
 ami= "ami-055a9df0c8c9f681c"
instance_type = "t2.micro"
tags = {
    name = "dev"
}
  
}