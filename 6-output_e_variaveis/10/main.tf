variable "nome" {
  type = string
  description = "Digite o seu nome"
  
  validation {
    condition = length(var.nome) > 10
    error_message = "Você digitou o nome de forma errada."
  }
}

variable "ami_id" {
  type = string
  description = "Digite o id da imagem na AWS"
  
  validation {
    condition = length(var.ami_id) > 10 && substr(var.ami_id, 0, 4) == "ami-"
    error_message = "Você precisa ter uma imagem AWS válida."
  }
}

variable "idade" {
  type        = number
  description = "Digite sua idade"
}

variable "senha" {
  type        = string
  description = "Digite a senha"
  sensitive   = true
}

variable "casado" {
  type        = bool
  description = "Digite casado ? (true/false)"

  validation {
    condition = !var.casado
    error_message = "Neste time só pode entrar pessoas solteiras."
  }
}

output "Nome" {
  value = var.nome
}
output "Idade" {
  value = var.idade
}
output "Senha" {
  value     = var.senha
  sensitive = true
}
output "Casado" {
  value = var.casado
}