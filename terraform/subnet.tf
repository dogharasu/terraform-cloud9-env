############################################################################
# Subnet
############################################################################
# Subnet for Cloud9
resource "aws_subnet" "subet" {
  availability_zone = "ap-northeast-1a"
  cidr_block        = "10.0.0.0/24"
  tags = {
    "Name" = "example-subnet-a"
  }
  vpc_id = aws_vpc.vpc.id
}