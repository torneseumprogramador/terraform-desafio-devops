#!/bin/bash

cd terraform/
terraform init
terraform apply -auto-approve

sleep 3  # espera um pouco

ANSIBLE_RETORNO=$(terraform output)
DNS=(${ANSIBLE_RETORNO//=/ })
DNS=${DNS[1]}
DNS=$(echo $DNS | sed -e "s/\"//g")

# DNS=$(terraform output public_dns) # Rafa mais reduzido

cd ../ansible

echo "
[dotnet]
$DNS
" > hosts

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hosts provisionar.yml -u ubuntu --private-key ../../ssh/id_rsa

ssh -i ../../ssh/id_rsa ubuntu@$DNS -o ServerAliveInterval=60