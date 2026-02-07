variable "name" {}
variable "vpc_id" {}
variable "subnet_ids" {
  type = list(string)
}

variable "engine" {
  default = "mysql"
}

variable "engine_version" {
  default = "8.0"
}

variable "instance_class" {
  default = "db.t3.micro"
}

variable "allocated_storage" {
  default = 20
}

variable "username" {}
variable "password" {
  sensitive = true
}

variable "port" {
  default = 3306
}

variable "allowed_cidrs" {
  type = list(string)
}
