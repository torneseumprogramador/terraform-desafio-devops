variable "nomes" {
  type = map
  default = {
    "vm1" : "Primeira",
    "vm2" : "Segunda",
    "vm3" : "Terceira",
    "vm4" : "Quarta",
  }
}

variable "tipos_images" {
  type = list(string)
  default = [
    "t2.micro",
    "t2.nano",
    "t2.large"
  ]
}

variable "instance_type" {
  type        = number
  description = "Selecione a opção: (0) t2.micro, (1) t2.nano, (2) t2.large"
}