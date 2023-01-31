resource "aws_nat_gateway" "NAT-Gateway" {
  allocation_id = aws_eip.ElasticIp.id
  subnet_id = aws_subnet.main[0].id
}