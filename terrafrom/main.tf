resource "aws_instance" "web" {
  count         = 2
  ami           = "ami-0c55b159cbfafe1f0" # Example AMI
  instance_type = "t3.micro"
  key_name      = "dove-key"

  vpc_security_group_ids = [aws_security_group.dove-sg.id]
  subnet_id              = aws_subnet.main.id

  tags = {
    Name        = "Dove-Web-${count.index + 1}"
    Environment = "Dev"
  }
}
