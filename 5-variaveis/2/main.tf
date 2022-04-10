variable "nome" {
  type = string
  description = "Digite o seu nome"
}

variable "idade" {
  type = number
  description = "Digite sua idade"
}

variable "casado" {
  type = bool
  description = "Digite casado ? (true/false)"
}

resource local_file "multfiles" {
  filename    = "seu-nome.txt"
  content     = <<EOF
  Nome: ${var.nome}
  Idade: ${var.idade}
  Casado: ${var.casado}

EOF
}