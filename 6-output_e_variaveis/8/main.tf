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

output Nome {
  value       = var.nome
}
output Idade {
  value       = var.idade
}
output Casado {
  value       = var.casado
}