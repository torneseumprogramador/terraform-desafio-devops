variable "nomes" {
  type = map
  default = {
    "vm1" : "Primeira",
    "vm2" : "Segunda",
    "vm3" : "Terceira",
    "vm4" : "Quarta",
  }
}

variable "instance_type" {
  type        = string
  description = "O tipo de VM para criação, Ex: (t2.micro)"

  validation {
    condition     = length(var.instance_type) > 5 && (substr(var.instance_type, 0, 3) == "t1." || substr(var.instance_type, 0, 3) == "t2." || substr(var.instance_type, 0, 3) == "t3.")
    error_message = "Você precisa ter um tipo de instância válido."
  }
}