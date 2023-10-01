# Associate Public Subnets with Public Route Table
resource "aws_route_table_association" "public_subnet_az1_association" {
  count=2
  subnet_id      = aws_subnet.public-subnet-az1[count.index].id
  route_table_id = aws_route_table.public-rt.id

}

/*resource "aws_route_table_association" "public_subnet_az2_association" {
  subnet_id      = aws_subnet.public-subnet-az2.id
  route_table_id = aws_route_table.public-rt.id
}*/

# Associate Private Subnets with Private Route Table
resource "aws_route_table_association" "private_subnet_az1_association" {
  count=2
  subnet_id      = aws_subnet.private-subnet-az1[count.index].id
  route_table_id = aws_route_table.private-rt.id
}

/*resource "aws_route_table_association" "private_subnet_az2_association" {
  subnet_id      = aws_subnet.private-subnet-az2.id
  route_table_id = aws_route_table.private-rt.id
}
*/