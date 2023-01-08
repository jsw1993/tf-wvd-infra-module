output "wvd-registration-token" {
  value = azurerm_virtual_desktop_host_pool_registration_info.wvd_pool.token
}

output "wvd-host-pool-name" {
  value = azurerm_virtual_desktop_host_pool.wvd_pool.name
}

output "wvd-host-pool-id" {
  value = azurerm_virtual_desktop_host_pool.wvd_pool.id
}

output "wvd-app-group-id" {
  value = azurerm_virtual_desktop_application_group.default_wvd_app_group.id
}

output "wvd-workspace-id" {
  value = azurerm_virtual_desktop_workspace.wvd_workspace.id
}