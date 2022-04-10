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

variable "senha" {
  type = string
  description = "Digite a senha"
  sensitive = true
}

output Nome {
  value       = var.nome
}
output Idade {
  value       = var.idade
}
output Casado {
  value       = var.casado
}
output Senha {
  value       = var.senha
  sensitive = true
}