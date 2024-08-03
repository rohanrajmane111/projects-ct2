


resource "aws_instance" "ec2demo" {
  ami           = "ami-0533f2ba8a1995cf9"
  instance_type = "t2.micro"
}