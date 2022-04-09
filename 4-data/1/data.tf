provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["099720109477"] # ou ["099720109477"] ID master com permissão para busca

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-*"] # exemplo de como listar um nome de AMI - 'aws ec2 describe-images --region us-east-1 --image-ids ami-09e67e426f25ce0d7' https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html
  }
}


data "http" "api_viacep" {
  url = "https://viacep.com.br/ws/01001000/json/"
  request_headers = {
    Accept = "application/json"
  }
}

data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["default"]
  }
}



# resource "aws_instance" "vm" {
#   count         = 2
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t2.nano"
#   key_name      = aws_key_pair.chave_ssh_desafio.key_name
#   vpc_security_group_ids = [
#     aws_security_group.libera_ssh.id
#   ]

#   tags = {
#     Name = "${jsondecode(data.http.api_viacep.body).localidade}-${count.index}"
#   }
# }
