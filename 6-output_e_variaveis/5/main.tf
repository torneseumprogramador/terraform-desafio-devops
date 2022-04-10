variable "clientes" {
  type = list(map(string))
  default = [
    {
      "nome": "danilo",
      "telefone": "(11)11111111",
      "cpf": "22211111111",
    }
  ]
}

output "dados_dos_clientes" {
  value = [
    for obj in var.clientes:
      "Nome: ${obj.nome}, Telefone: ${obj.telefone}, cpf: ${obj.cpf}"
  ]
}