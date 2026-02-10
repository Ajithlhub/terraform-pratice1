resource "aws_instance" "name" {
  ami = "ami-0320940581663281e"
  instance_type = "t2.micro"
  tags = {
    name = "test"
  }
}
 #terraform import aws_instance.name i-0c7bcdcf202a7df1c change instance id already exist
 


resource "aws_s3_bucket" "name" {
    bucket = "testdevajithbucket"

  
}

    
#terraform import aws_s3_bucket.name testdevajithbucket here change the bucket already exist
