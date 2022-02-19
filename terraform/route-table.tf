############################################################################
# Route-table
############################################################################
# Route for Public Subnet
resource "aws_route_table" "route_pub" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    "Name" = "example-routetable-public"
  }
  vpc_id = aws_vpc.vpc.id
}

############################################################################
# Route Table Association
############################################################################
# Route Association for Public Subnet
resource "aws_route_table_association" "subnet_route_table_association" {
  subnet_id      = aws_subnet.subet.id
  route_table_id = aws_route_table.route_pub.id
}
