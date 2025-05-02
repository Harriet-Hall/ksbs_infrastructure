resource "aws_instance" "server" {
  ami                         = "ami-0dfe0f1abee59c78d"
  instance_type               = "t2.micro"
  count                       = length(aws_subnet.public_subnet)
  subnet_id                   = aws_subnet.public_subnet[count.index].id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true


  tags = {
    Name = "flask-server-ec2"
  }
}
