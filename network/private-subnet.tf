# Private Subnets - Availability Zone 1
resource "aws_subnet" "private-subnet-az1" {
  count = 2
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.priv-sub[count.index]#"10.0.2.0/24"
  availability_zone = var.azs[count.index]
  tags = {
    Name = "private-subnet"
  } 
}

# Private Subnets - Availability Zone 2
/*resource "aws_subnet" "private-subnet-az2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1b"  
  tags = {
    Name = "private-subnet-az2"
  }
}*/