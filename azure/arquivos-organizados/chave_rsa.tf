# Create (and display) an SSH key
resource "tls_private_key" "example_ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource local_file "criando_arquivo" {
  filename             = "chave.priv"
  content              = tls_private_key.example_ssh.private_key_pem
  file_permission      = 0400
  directory_permission = 0400
}

resource local_file "criando_arquivo_publico" {
  filename             = "chave.pub"
  content              = tls_private_key.example_ssh.public_key_openssh
  file_permission      = 0400
  directory_permission = 0400
}
