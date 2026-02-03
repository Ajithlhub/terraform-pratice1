resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
      name="cust-vpc"
      
    }
  
  depends_on = [ aws_s3_bucket.name ]#explicity -->after create s3 only vpc create like depency block usuage
}


resource "aws_s3_bucket" "name" {
    bucket = "tftfvhftdfrtaukuhhgyugjhbiog"
  
}