resource "aws_instance" "vm" {
  count         = 2
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.nano"
  key_name      = aws_key_pair.chave_ssh_desafio.key_name
  vpc_security_group_ids = [
    aws_security_group.libera_ssh.id
  ]

  tags = {
    Name = "MinhaPrimeiraMaquina-${count.index}"
  }
}