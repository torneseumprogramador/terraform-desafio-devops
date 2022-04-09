resource "aws_instance" "vm" {
  count         = 2
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.nano"
  key_name      = aws_key_pair.chave_ssh_desafio.key_name
  vpc_security_group_ids = [
    aws_security_group.libera_ssh.id
  ]

  tags = {
    Name = "MinhaPrimeiraMaquina-${count.index}"
  }
}