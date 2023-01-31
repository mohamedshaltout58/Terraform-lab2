resource "aws_internet_gateway" "lab2-igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.igw-name
  }
}