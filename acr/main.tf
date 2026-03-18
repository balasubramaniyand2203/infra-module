resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.resource_group
  location            = var.location
  sku                 = var.acr_sku
  admin_enabled       = var.acr_admin_enabled
}

# This is the "Right" assignment: ACR + AKS
resource "azurerm_role_assignment" "acr_pull" {
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  
  # PASS THE AKS PRINCIPAL ID HERE
  principal_id         = var.aks_principal_id 

  # Prevents 403 errors during high-speed automation
  skip_service_principal_aad_check = true
}
