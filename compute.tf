resource "azurerm_service_plan" "main" {
  name                = "asp-hussain-fresh"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  os_type             = "Linux"
  sku_name            = "B1"

  depends_on = [azurerm_resource_group.main]
}

resource "azurerm_linux_web_app" "api" {
  name                = "app-hussain-api-7721"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  service_plan_id     = azurerm_service_plan.main.id

  site_config {
    application_stack {
      php_version = "8.2"
    }
    always_on = false
  }

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }
}

resource "azurerm_linux_web_app" "ui" {
  name                = "app-hussain-ui-7721"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  service_plan_id     = azurerm_service_plan.main.id

  site_config {
    always_on = false
  }

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }

  depends_on = [azurerm_linux_web_app.api]
}