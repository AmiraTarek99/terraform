resource "aws_subnet" "public-subnet-az1" {
  count=2  
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.pub-sub[count.index] #"10.0.1.0/24"
  availability_zone = var.azs[count.index]  #"us-east-1a" 
  tags = {
    Name = "public-subnet"
  }
}

/*resource "aws_subnet" "public-subnet-az2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1b"  
  tags = {
    Name = "public-subnet-az2"
  }
}*/