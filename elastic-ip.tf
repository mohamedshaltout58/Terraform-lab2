resource "aws_eip" "ElasticIp" {
  tags = {
    Name = var.ElasticIp-name
  }
}
