resource "aws_subnet" "private2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.5.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "private-subnet-2"
  }
}