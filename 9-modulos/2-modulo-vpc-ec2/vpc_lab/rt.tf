resource "aws_route_table" "rt_terraform" {
  vpc_id = aws_vpc.vpc_lab.id

  route {
    cidr_block                 = "0.0.0.0/0"
    gateway_id                 = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "route_table_terraform"
  }
}



resource "aws_route_table_association" "a1" {
  subnet_id      = aws_subnet.subnet_1a.id
  route_table_id = aws_route_table.rt_terraform.id
}

resource "aws_route_table_association" "b1" {
  subnet_id      = aws_subnet.subnet_1b.id
  route_table_id = aws_route_table.rt_terraform.id
}

resource "aws_route_table_association" "c1" {
  subnet_id      = aws_subnet.subnet_1c.id
  route_table_id = aws_route_table.rt_terraform.id
}
