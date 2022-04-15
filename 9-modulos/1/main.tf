provider "aws" {
  region = "us-east-1"
}

module "vm" {
  source         = "github.com/torneseumprogramador/modulo-tf-criado-desafio-devops.git"
  nome_vm        = "vm-criada-com-modulo"
  tipo_instancia = "t2.micro"
  ami_id         = data.aws_ami.ubuntu.id
}

module "vm2" {
  for_each       = toset(["um", "dois", "tres"])
  source         = "github.com/torneseumprogramador/modulo-tf-criado-desafio-devops.git"
  nome_vm        = each.value
  tipo_instancia = "t3.micro"
  ami_id         = data.aws_ami.ubuntu.id
}

output "dns" {
  value = module.vm.public_dns
}

output "dns2" {
  value = [
    for vm in module.vm2 :
      vm.public_dns
  ]
}