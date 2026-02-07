module "rds" {
  source = "./modules/rds"

  name            = "my-rds"
  vpc_id          = aws_vpc.main.id
  subnet_ids      = aws_subnet.private[*].id
  username        = "admin"
  password        = "StrongPassword123!"
  allowed_cidrs   = ["10.0.0.0/16"]
}
