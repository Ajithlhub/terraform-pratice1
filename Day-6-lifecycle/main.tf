resource "aws_instance" "name" {
    ami = "ami-055a9df0c8c9f681c"
    instance_type = "t2.micro"
    availability_zone = "us-west-2b"
  tags = {
    name="test"
  }
  
  lifecycle {
   # prevent_destroy = true  #true it is not allow to destroy # in the case if i wnt you destroy what i need to do we shouble be false then run terraform destroy
 create_before_destroy = true #1st create then destroy
 ignore_changes = [ tags ] #ami,instances type
  } #apply for this resources only not entire .tf

  
  }