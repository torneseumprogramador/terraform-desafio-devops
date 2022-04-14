resource "aws_subnet" "subnets" {
  count             = length(keys(var.subnets))
  vpc_id            = aws_vpc.vpc_desafio.id
  cidr_block        = var.subnets[keys(var.subnets)[count.index]].cdir
  availability_zone = var.subnets[keys(var.subnets)[count.index]].zona

  tags = {
    "Name" = keys(var.subnets)[count.index]
  }
}

resource "aws_subnet" "subnets_privadas" {
  count             = length(keys(var.subnets_privadas))
  vpc_id            = aws_vpc.vpc_desafio.id
  cidr_block        = var.subnets_privadas[keys(var.subnets_privadas)[count.index]].cdir
  availability_zone = var.subnets_privadas[keys(var.subnets_privadas)[count.index]].zona

  tags = {
    "Name" = keys(var.subnets_privadas)[count.index]
  }
}