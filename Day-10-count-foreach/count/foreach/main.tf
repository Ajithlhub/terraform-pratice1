provider "aws" {
  
}



resource "aws_instance" "name" {
    ami = "ami-055a9df0c8c9f681c"
    instance_type = "t2.micro"
    for_each =toset(var.ec2)
   # count =length(var.ec2)
    tags = {
     name = each.value
     
     #name =ec2-$(count.index)
    }

}
    
    variable "ec2"{
        type = list(string)
        default = [ "ajith","dev","test"]
      
    }
