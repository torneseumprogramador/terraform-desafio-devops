variable "arquivo" {
  description = "Digite o seu nome"
}

resource "local_file" "multfiles" {
  filename = "seu-nome.txt"
  content  = var.arquivo
}