resource "aws_instance" "ec2-private" {
  ami           = var.ami
  instance_type = var.instance-type
  vpc_security_group_ids = [aws_security_group.EC2-security-group.id]
  subnet_id = aws_subnet.main[1].id
  user_data = file("userdata.sh")
  key_name = "iti"


  tags = {
    Name = var.vpc-name
  }
}