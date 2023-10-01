 output vpc-id {
   value       = aws_vpc.myvpc.id

 }

  output vpc-cidr {
   value       = aws_vpc.myvpc.cidr_block

 }

  output pub-subnets {
   value       = aws_subnet.public-subnet-az1

 }

 output priv-subnets {
   value       = aws_subnet.private-subnet-az1

 }
