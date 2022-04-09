provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "vm" {
  ami = "ami-04505e74c0741db8d"
  instance_type = "t2.nano"
  
  tags = {
    Name = "MinhaPrimeiraMaquina"
  }
}