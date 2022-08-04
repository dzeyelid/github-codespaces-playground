output "staticapp_deployment_token" {
  value     = azurerm_static_site.frontend.api_key
  sensitive = true
}
