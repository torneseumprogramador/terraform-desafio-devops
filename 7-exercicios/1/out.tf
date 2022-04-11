output "informacoes_vms" {
  value = [
    for vm in aws_instance.vm :
    "ssh -i /Users/danilo/Desktop/desafio_devops/terraform/ssh/id_rsa ubuntu@${vm.public_dns} -o ServerAliveInterval=60 "
  ]
}