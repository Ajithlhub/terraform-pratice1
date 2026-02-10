resource "aws_instance" "web" {
  ami           = var.instance_class
  instance_type = var.db_user
  subnet_id     = var.subnet_id

  tags = {
    Name = "WebServer"
  }
}