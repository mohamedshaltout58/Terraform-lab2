resource "aws_route_table" "routetable" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.internet-gate
    gateway_id = aws_internet_gateway.lab2-igw.id
  }

  tags = {
    Name = var.routetable-name
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.main[0].id
  route_table_id = aws_route_table.routetable.id
}