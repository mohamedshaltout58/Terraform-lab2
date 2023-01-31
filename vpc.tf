resource "aws_vpc" "main" {
  cidr_block       = var.vpc-cidr-block
  tags = {
    Name = var.vpc-name
  }
}