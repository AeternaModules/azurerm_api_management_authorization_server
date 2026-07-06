output "api_management_authorization_servers" {
  description = "All api_management_authorization_server resources"
  value       = azurerm_api_management_authorization_server.api_management_authorization_servers
  sensitive   = true
}
output "api_management_authorization_servers_api_management_name" {
  description = "List of api_management_name values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.api_management_name]
}
output "api_management_authorization_servers_authorization_endpoint" {
  description = "List of authorization_endpoint values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.authorization_endpoint]
}
output "api_management_authorization_servers_authorization_methods" {
  description = "List of authorization_methods values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.authorization_methods]
}
output "api_management_authorization_servers_bearer_token_sending_methods" {
  description = "List of bearer_token_sending_methods values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.bearer_token_sending_methods]
}
output "api_management_authorization_servers_client_authentication_method" {
  description = "List of client_authentication_method values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.client_authentication_method]
}
output "api_management_authorization_servers_client_id" {
  description = "List of client_id values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.client_id]
}
output "api_management_authorization_servers_client_registration_endpoint" {
  description = "List of client_registration_endpoint values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.client_registration_endpoint]
}
output "api_management_authorization_servers_client_secret" {
  description = "List of client_secret values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.client_secret]
  sensitive   = true
}
output "api_management_authorization_servers_default_scope" {
  description = "List of default_scope values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.default_scope]
}
output "api_management_authorization_servers_description" {
  description = "List of description values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.description]
}
output "api_management_authorization_servers_display_name" {
  description = "List of display_name values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.display_name]
}
output "api_management_authorization_servers_grant_types" {
  description = "List of grant_types values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.grant_types]
}
output "api_management_authorization_servers_name" {
  description = "List of name values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.name]
}
output "api_management_authorization_servers_resource_group_name" {
  description = "List of resource_group_name values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.resource_group_name]
}
output "api_management_authorization_servers_resource_owner_password" {
  description = "List of resource_owner_password values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.resource_owner_password]
  sensitive   = true
}
output "api_management_authorization_servers_resource_owner_username" {
  description = "List of resource_owner_username values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.resource_owner_username]
}
output "api_management_authorization_servers_support_state" {
  description = "List of support_state values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.support_state]
}
output "api_management_authorization_servers_token_body_parameter" {
  description = "List of token_body_parameter values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.token_body_parameter]
}
output "api_management_authorization_servers_token_endpoint" {
  description = "List of token_endpoint values across all api_management_authorization_servers"
  value       = [for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : v.token_endpoint]
}

