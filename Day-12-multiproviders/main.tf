

provider "aws" {
    region = "us-east-1"
  
}

provider "aws" {
  region = "us-west-2"
  alias = "dev"
}
resource "aws_vpc" "name" {
    cidr_block =  "10.0.0.0./16"
    region = aws.dev
  
}

resource "aws_s3_bucket" "name" {
    bucket = "hydyfgyguihuih"
  
}


#Note:We Can Use Muilti Provider Block Diff Requirement And Diff Resources and Diff Regions