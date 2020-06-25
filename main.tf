terraform {
  required_version = ">= 0.12"

  required_providers {
    azurerm = ">= 2.0"
  }
}

data azurerm_resource_group "rg" {
  name = var.resource_group_name
}

#------------------------------------------------
# ACR
#-----------------------------------------------
resource "azurerm_container_registry" "acr" {
  name                     = var.name
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  georeplication_locations = var.georeplication_locations
  sku                      = var.sku

  tags = var.tags
}
