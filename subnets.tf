resource "aws_subnet" "main" {
  count = 2
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnets-cidr-block[count.index]

  tags = {
    Name = var.subnets-name[count.index]
  }

}