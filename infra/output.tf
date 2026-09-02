output "ui_app_name" {
  value       = azurerm_linux_web_app.ui.name
  description = "The name of the UI App Service"
}

output "api_app_name" {
  value       = azurerm_linux_web_app.api.name
  description = "The name of the API App Service"
}