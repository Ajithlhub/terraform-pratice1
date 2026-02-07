resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group"
  subnet_ids = [
    "subnet-0e7feac6c01271df1",
    "subnet-09969b7cc61f44a59"
  ]

  tags = {
    Name = "rds-subnet-group"
  }
}
resource "aws_security_group" "app_sg" {
  name   = "app-sg"
  vpc_id = "vpc-0ff07f7bde229fce2"
}

resource "aws_db_instance" "rds" {
  identifier             = "my-rds-db"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20

  db_name                = "mydb"
  username               = "admin"
  password               = "Admin123456!"

  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name


  publicly_accessible    = false
  skip_final_snapshot    = true

  tags = {
    Name = "my-rds-db"
  }
}
