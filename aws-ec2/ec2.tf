resource "aws_instance" "example_server" {
  ami           = "ami-0aff18ec83b712f05"
  instance_type = "t2.micro"

  tags = {
    Name = "jpmc-chaitanya-ec2"
  }
}