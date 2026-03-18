resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.resource_group 
  location            = var.location       
  sku                 = var.acr_sku
  admin_enabled       = var.acr_admin_enabled
}

data "azurerm_client_config" "current" {}

resource "azurerm_role_assignment" "acr_pull" {
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  principal_id         = data.azurerm_client_config.current.object_id
}