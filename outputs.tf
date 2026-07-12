output "api_management_authorization_servers_id" {
  description = "Map of id values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.id }
}
output "api_management_authorization_servers_api_management_name" {
  description = "Map of api_management_name values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.api_management_name }
}
output "api_management_authorization_servers_authorization_endpoint" {
  description = "Map of authorization_endpoint values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.authorization_endpoint }
}
output "api_management_authorization_servers_authorization_methods" {
  description = "Map of authorization_methods values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.authorization_methods }
}
output "api_management_authorization_servers_bearer_token_sending_methods" {
  description = "Map of bearer_token_sending_methods values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.bearer_token_sending_methods }
}
output "api_management_authorization_servers_client_authentication_method" {
  description = "Map of client_authentication_method values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.client_authentication_method }
}
output "api_management_authorization_servers_client_id" {
  description = "Map of client_id values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.client_id }
}
output "api_management_authorization_servers_client_registration_endpoint" {
  description = "Map of client_registration_endpoint values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.client_registration_endpoint }
}
output "api_management_authorization_servers_client_secret" {
  description = "Map of client_secret values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.client_secret }
  sensitive   = true
}
output "api_management_authorization_servers_default_scope" {
  description = "Map of default_scope values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.default_scope }
}
output "api_management_authorization_servers_description" {
  description = "Map of description values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.description }
}
output "api_management_authorization_servers_display_name" {
  description = "Map of display_name values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.display_name }
}
output "api_management_authorization_servers_grant_types" {
  description = "Map of grant_types values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.grant_types }
}
output "api_management_authorization_servers_name" {
  description = "Map of name values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.name }
}
output "api_management_authorization_servers_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.resource_group_name }
}
output "api_management_authorization_servers_resource_owner_password" {
  description = "Map of resource_owner_password values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.resource_owner_password }
  sensitive   = true
}
output "api_management_authorization_servers_resource_owner_username" {
  description = "Map of resource_owner_username values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.resource_owner_username }
}
output "api_management_authorization_servers_support_state" {
  description = "Map of support_state values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.support_state }
}
output "api_management_authorization_servers_token_body_parameter" {
  description = "Map of token_body_parameter values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.token_body_parameter }
}
output "api_management_authorization_servers_token_endpoint" {
  description = "Map of token_endpoint values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.token_endpoint }
}

