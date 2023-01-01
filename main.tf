
resource "azurerm_virtual_desktop_host_pool" "wvd_pool" {
  name                     = "${var.prefix}${var.wvd-hostpool-name}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  type                     = "Pooled"
  load_balancer_type       = "BreadthFirst" # Options: BreadthFirst / DepthFirst
  friendly_name            = var.wvd-hostpool-friendly-name
  description              = var.wvd-hostpool-description
  validate_environment     = false
  maximum_sessions_allowed = var.wvd-hostpool-max-sessions
}

resource "azurerm_virtual_desktop_host_pool_registration_info" "wvd_pool" {
  hostpool_id     = azurerm_virtual_desktop_host_pool.wvd_pool.id
  expiration_date = timeadd(timestamp(), "628h")
}

resource "azurerm_virtual_desktop_application_group" "default_wvd_app_group" {
  name                = "${var.prefix}${var.wvd-defaultappgroup-name}"
  resource_group_name = var.resource_group_name
  location            = var.location
  type                = "Desktop"
  host_pool_id        = azurerm_virtual_desktop_host_pool.wvd_pool.id
  friendly_name       = var.wvd-defaultappgroup-friendly-name
  description         = var.wvd-defaultappgroup-description
}

resource "azurerm_virtual_desktop_workspace" "wvd_workspace" {
  name                = "${var.prefix}${var.wvd-workspace-name}"
  resource_group_name = var.resource_group_name
  location            = var.location
  friendly_name       = var.wvd-workspace-friendly-name
  description         = var.wvd-workspace-description
}

resource "azurerm_virtual_desktop_workspace_application_group_association" "wvd_workspace_appgroup" {
  workspace_id         = azurerm_virtual_desktop_workspace.wvd_workspace.id
  application_group_id = azurerm_virtual_desktop_application_group.default_wvd_app_group.id
}
