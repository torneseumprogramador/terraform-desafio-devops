resource "azurerm_resource_group" "rg" {
  name      = "grupoTerraformImersao"
  # name      = random_pet.rg-name.id
  location  = var.resource_group_location
}