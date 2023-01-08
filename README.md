# Overview
This module creates the infrastructure required for an Azure Virtual Desktop Deployment

# Structure
- default.tf: Contains any variables that have a default set
- main.tf: Contains local vars and any resources
- variables.tf: Contains any required variables
- test: Contains mock files to run TF validate against. Also provides an example of calling the module

<!-- BEGIN_TF_DOCS -->
# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hostpool-custom_rdp_properties"></a> [hostpool-custom\_rdp\_properties](#input\_hostpool-custom\_rdp\_properties) | custom RDP properties for host pool | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | Resource location | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Resource name prefix | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Group Name | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags | `map(any)` | `{}` | no |
| <a name="input_wvd-defaultappgroup-description"></a> [wvd-defaultappgroup-description](#input\_wvd-defaultappgroup-description) | WVD Default App Group Description | `string` | `"WVD Default App Group for Desktop Access"` | no |
| <a name="input_wvd-defaultappgroup-friendly-name"></a> [wvd-defaultappgroup-friendly-name](#input\_wvd-defaultappgroup-friendly-name) | WVD Default App Group Friendly Name | `string` | `"WVD App Group"` | no |
| <a name="input_wvd-defaultappgroup-name"></a> [wvd-defaultappgroup-name](#input\_wvd-defaultappgroup-name) | WVD Default App Group Name | `string` | `"WVDAppGroup"` | no |
| <a name="input_wvd-hostpool-description"></a> [wvd-hostpool-description](#input\_wvd-hostpool-description) | WVD Host Pool Description | `string` | `"WVD Host Pool"` | no |
| <a name="input_wvd-hostpool-friendly-name"></a> [wvd-hostpool-friendly-name](#input\_wvd-hostpool-friendly-name) | Frieendly ame of WVD Host Pool | `string` | `"WVD Host Pool"` | no |
| <a name="input_wvd-hostpool-max-sessions"></a> [wvd-hostpool-max-sessions](#input\_wvd-hostpool-max-sessions) | Maxinum sessions for host pool | `number` | `10` | no |
| <a name="input_wvd-hostpool-name"></a> [wvd-hostpool-name](#input\_wvd-hostpool-name) | Name of WVD Host Pool | `string` | `"WVDHostPool"` | no |
| <a name="input_wvd-workspace-description"></a> [wvd-workspace-description](#input\_wvd-workspace-description) | WVD Workspace Description | `string` | `"WVD Workspace"` | no |
| <a name="input_wvd-workspace-friendly-name"></a> [wvd-workspace-friendly-name](#input\_wvd-workspace-friendly-name) | WVD Workspace Friendly Name | `string` | `"WVD Workspace"` | no |
| <a name="input_wvd-workspace-name"></a> [wvd-workspace-name](#input\_wvd-workspace-name) | WVD Workspace Name | `string` | `"WVDWorkspace"` | no |
# Resources

| Name | Type |
|------|------|
| [azurerm_virtual_desktop_application_group.default_wvd_app_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_desktop_application_group) | resource |
| [azurerm_virtual_desktop_host_pool.wvd_pool](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_desktop_host_pool) | resource |
| [azurerm_virtual_desktop_host_pool_registration_info.wvd_pool](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_desktop_host_pool_registration_info) | resource |
| [azurerm_virtual_desktop_workspace.wvd_workspace](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_desktop_workspace) | resource |
| [azurerm_virtual_desktop_workspace_application_group_association.wvd_workspace_appgroup](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_desktop_workspace_application_group_association) | resource |
# Outputs

| Name | Description |
|------|-------------|
| <a name="output_wvd-app-group-id"></a> [wvd-app-group-id](#output\_wvd-app-group-id) | n/a |
| <a name="output_wvd-host-pool-id"></a> [wvd-host-pool-id](#output\_wvd-host-pool-id) | n/a |
| <a name="output_wvd-host-pool-name"></a> [wvd-host-pool-name](#output\_wvd-host-pool-name) | n/a |
| <a name="output_wvd-registration-token"></a> [wvd-registration-token](#output\_wvd-registration-token) | n/a |
| <a name="output_wvd-workspace-id"></a> [wvd-workspace-id](#output\_wvd-workspace-id) | n/a |

<!-- END_TF_DOCS -->