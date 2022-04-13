resource "aws_route_table_association" "rts_a" {
  count          = length(keys(var.subnets))
  subnet_id      = aws_subnet.subnets[count.index].id
  route_table_id = aws_route_table.rt_desafio.id
}