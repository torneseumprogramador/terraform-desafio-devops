#!/bin/sh

export TF_VAR_nome=danilo
export TF_VAR_idade=38
export TF_VAR_casado=false

terraform init
terraform apply -auto-approve
