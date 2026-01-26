provider "aws" {
  
}
terraform {
    required_version = "1.12.0"#
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"#it want to upgrade the version if here and run terraform init
    
    }
  }
}

#provider "aws" {
  # Configuration options


