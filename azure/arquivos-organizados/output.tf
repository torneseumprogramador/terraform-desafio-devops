output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "public_ip_address" {
  value = "ssh -i chave.priv azureuser@${azurerm_linux_virtual_machine.myterraformvm.public_ip_address}"
}