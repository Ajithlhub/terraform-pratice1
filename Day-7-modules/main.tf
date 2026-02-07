resource "aws_instance" "name" {
    ami =var.aws_instance
    instance_type =var.instance_type
  tags = {
    name = " "
  }
}