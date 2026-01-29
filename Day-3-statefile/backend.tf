terraform {
  backend "s3" {
    bucket = "ajithbucketest"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}