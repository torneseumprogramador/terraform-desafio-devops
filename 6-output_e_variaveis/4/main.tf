variable "cliente" {
  type = map(string)
  default = {
    "nome": "danilo",
    "telefone": "(11)11111111",
    "cpf": "22211111111",
  }
}

output "dados_do_cliente" {
  value = [
    for key, value in var.cliente:
      "${key}: ${value}"
  ]
}