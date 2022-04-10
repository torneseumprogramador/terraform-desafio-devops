variable "senha" {
  type = string
  sensitive = true
  description = "Digite sua senha"
}

output "senha_digitada" {
  value = "A senha digitada foi: ${var.senha}"
  sensitive = true
}