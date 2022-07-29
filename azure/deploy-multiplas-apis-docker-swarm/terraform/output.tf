output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "public_ip_address" {
  value = [
    for key, item in azurerm_linux_virtual_machine.myterraformvm :
      "ssh -i chave.priv azureuser@${item.public_ip_address}"
  ]
}