resource "aws_nat_gateway" "ng" {
  allocation_id = aws_eip.eip.id
  subnet_id = aws_subnet.subnets[0].id

  tags = {
    "Name" = "NAT-desafio"
  }

  depends_on = [
    aws_subnet.subnets
  ]
}