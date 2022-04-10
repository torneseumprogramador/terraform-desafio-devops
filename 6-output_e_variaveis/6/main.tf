variable "clientes" {
  type = list(
    object({
      nome = string
      telefone = string
      cpf = number
    })
  )

  default = [
    {
      "nome": "danilo",
      "telefone": "(11)11111111",
      "cpf": "43443434343",
    }
  ]
}

output "dados_dos_clientes" {
  value = [
    for obj in var.clientes:
      "Nome: ${obj.nome}, Telefone: ${obj.telefone}, cpf: ${obj.cpf}"
  ]
}