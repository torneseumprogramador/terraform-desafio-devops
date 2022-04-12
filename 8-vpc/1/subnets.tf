resource "aws_subnet" "subnet_a1" {
  vpc_id            = aws_vpc.vpc_desafio.id
  cidr_block        = "10.0.64.0/18"
  availability_zone = "us-east-1a"

  tags = {
    "Name" = "subnet-a1"
  }
}

resource "aws_subnet" "subnet_b1" {
  vpc_id            = aws_vpc.vpc_desafio.id
  cidr_block        = "10.0.128.0/18"
  availability_zone = "us-east-1b"

  tags = {
    "Name" = "subnet-b1"
  }
}

resource "aws_subnet" "subnet_c1" {
  vpc_id            = aws_vpc.vpc_desafio.id
  cidr_block        = "10.0.192.0/18"
  availability_zone = "us-east-1c"

  tags = {
    "Name" = "subnet-c1"
  }
}