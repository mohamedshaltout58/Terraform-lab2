resource "aws_route_table" "NAT-Route-Table" {
  vpc_id = aws_vpc.main.id
}

resource "aws_route_table_association" "RTAssociation" {
  subnet_id = aws_subnet.main[1].id
  route_table_id = aws_route_table.NAT-Route-Table.id
}

resource "aws_route" "example" {
  route_table_id = aws_route_table.NAT-Route-Table.id
  destination_cidr_block = var.internet-gate
  nat_gateway_id = aws_nat_gateway.NAT-Gateway.id
}
