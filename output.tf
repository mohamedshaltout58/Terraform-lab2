output "public-ec2-ip" {
  value = aws_instance.ec2-public.public_ip
}
output "private-ec2-ip" {
  value = aws_instance.ec2-private.private_ip
}