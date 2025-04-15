resource "azurerm_container_registry" "container_registry" {
  location            = "var.location"
  name                = "var.app_name"
  resource_group_name = "azurerm_resource_group.practicums.name"
  sku                 = "Basic"
  admin_enabled       = true
}

output "registry_hostname" {
  value = azurerm_container_registry.container_registry.login_server
}

output "registry_un" {
  value = azurerm_container_registry.container_registry.admin_username
}

output "registry_pw" {
  value = azurerm_container_registry.container_registry.admin_password
  sensitive = true
}
