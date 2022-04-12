resource "aws_route_table" "rt_desafio" {
  vpc_id = aws_vpc.vpc_desafio.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }

  tags = {
    "Name" = "rt_desafio"
  }
}