resource "aws_instance" "name" {
    ami = "ami-055a9df0c8c9f681c"
    instance_type = "t2.micro"
    count =length(var.aws_instance)
    tags = {
     name = var.aws_instance[count.index]
     
     #name =ec2-$(count.index)
    }

}
    
    variable "aws_instance"{
        type = list(string)
        default = [ "ajith","dev","test"]
      
    }
