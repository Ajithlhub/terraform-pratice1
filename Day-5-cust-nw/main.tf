 
  




#creation of vpc
resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
      name="cust-vpc"
    }
  
}

#creation of subnets
resource "aws_subnet" "name" {
 vpc_id = aws_vpc.name.id
cidr_block = "10.0.0.0/24"
tags = {
  name= "cust-sub1"
}

}

#craetion of private subnet
#resource "aws_subnet" "name2" {
 # vpc_id = aws_vpc.name.id
#cidr_block = "10.0.1.0/24"
#tags = {
 # name= "cust-sub2"
#}
#}

#creation of ig
resource "aws_internet_gateway" "name" {
vpc_id =aws_vpc.name.id
tags={
    name="cust_ig"
}
}   

#creation of route tables
resource "aws_route_table" "name" {
   vpc_id =aws_vpc.name.id
   route {
    cidr_block= "0.0.0.0/0"
    gateway_id =aws_internet_gateway.name.id
   }
   }  
  
#subnet assaciations
resource "aws_route_table_association" "name"{
  subnet_id = aws_subnet.name.id
  route_table_id = aws_route_table.name.id
}
#creation of nat
#resource "aws_nat_gateway" "name" {
  #allocation_id = aws_eip.nat_eip.id
  #subnet_id     = aws_subnet.name2.id

  #tags = {
   # Name = "nat"
  #}
#}

#cration of private rt
#subnet asscation to private sub#
#resource "aws_route" "name" {
  


#creation of sg
resource "aws_security_group" "dev_sg" {
  name   = "allow_tls"
  vpc_id = aws_vpc.name.id
  tags = {
    Name = "dev-sg"
  }
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" #indicate all protocol 
    cidr_blocks = ["0.0.0.0/0"]
  }
}
#creation of ec2 instances
resource "aws_instance" "name" {
  ami = "ami-055a9df0c8c9f681c"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.name.id
  vpc_security_group_ids = [aws_security_group.dev_sg.id]
  tags = {
    name="cust-ec2"
  }
}