variable "nomes" {
  type = list(any)
  default = [
    {
      "nome"   = "Primeira",
      "subnet" = "subnet_a1"
    },
    {
      "nome"   = "Segunda",
      "subnet" = "subnet_b1"
    },
    {
      "nome"   = "Terceira",
      "subnet" = "subnet_c1"
    },
    {
      "nome"   = "Quarta",
      "subnet" = "subnet_c1"
    }
  ]
}

variable "subnets" {
  type = map(any)
  default = {
    "subnet_a1" = {
      "zona" = "us-east-1a",
      "cdir" = "10.0.64.0/18"
    },
    "subnet_b1" = {
      "zona" = "us-east-1b",
      "cdir" = "10.0.128.0/18"
    },
    "subnet_c1" = {
      "zona" = "us-east-1c",
      "cdir" = "10.0.192.0/18"
    }
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