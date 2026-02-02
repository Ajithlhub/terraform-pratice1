terraform {
  backend "s3" {
    bucket = "testdevjufgughuig"
    key    = "terraform.tfstate"
    region = "us-west-1"
  }
}