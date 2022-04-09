provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "vm" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.nano"
  key_name      = aws_key_pair.chave_ssh_desafio.key_name
  vpc_security_group_ids = [
    aws_security_group.libera_ssh.id
  ]

  tags = {
    Name = "MinhaPrimeiraMaquina"
  }
}

resource "aws_security_group" "libera_ssh" {
  name        = "libera_ssh_desafio_devops"
  description = "Libera a porta 22 para as maquinas criadas no desafio devops"

  ingress = [
    {
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      description      = "Liberacao geral de fora para dentro"
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    }
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      description      = "Liberacao geral na parte interna"
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    }
  ]

  tags = {
    Name = "libera_ssh_desafio"
  }
}

resource "aws_key_pair" "chave_ssh_desafio" {
  key_name   = "chave_ssh_desafio_pub"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDRSBX1LBV5FE57BpATxHHh36kqIPTiUnWMg0LRvmjzoQFie2keA5FNP17s2fefqQP4EJOiElU8m+UeTLORoBfw/EWTFkAVQoTMZX+tpgWNgY6JPMy/zm0wRn2YXmX+KXO3h4kW2eB1gg2vK5hscXIIS60T2RPlph8Ht9AZDMuZnCpwUvjap939FSHu+Fiziu1lcesEWC4+Vtef0e7J/0o40XVlAkL56x36vBIM+63NLqlG+ZaJ9Q/sqsSIb3hOlBLZGMOffQZhp46JHRTS+ogAJ5Gpj1cmNK/o5+eFzdIICBixNiXkqBpyuv9V8E+rEKkP99nkdUBLh39+9ymdxqakxdoxQ/kiQqDjsabWeffuGzwMnuoVPySkc5B1Syrp1OM2OhmZY2SLg9XeNcUqf5gaOnDiQPp9zLtYQTd30ob/+86lOyUYG2L/t/EFnp2yFJwvsriK322USQ11X6aDJ9vQkjXvmmWBMyXbbSHvMJ17Pc59z3/Nx6It7s5T1P1m+Rk= danilo@Macbooks-MacBook-Pro.local"
}

