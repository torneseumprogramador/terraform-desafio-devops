resource "aws_vpc" "vpc_desafio" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    "Name" = "terraform-vpc-desafio"
  }
}