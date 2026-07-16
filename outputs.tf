output "api_management_authorization_servers_id" {
  description = "Map of id values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_authorization_servers_api_management_name" {
  description = "Map of api_management_name values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.api_management_name if v.api_management_name != null && length(v.api_management_name) > 0 }
}
output "api_management_authorization_servers_authorization_endpoint" {
  description = "Map of authorization_endpoint values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.authorization_endpoint if v.authorization_endpoint != null && length(v.authorization_endpoint) > 0 }
}
output "api_management_authorization_servers_authorization_methods" {
  description = "Map of authorization_methods values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.authorization_methods if v.authorization_methods != null && length(v.authorization_methods) > 0 }
}
output "api_management_authorization_servers_bearer_token_sending_methods" {
  description = "Map of bearer_token_sending_methods values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.bearer_token_sending_methods if v.bearer_token_sending_methods != null && length(v.bearer_token_sending_methods) > 0 }
}
output "api_management_authorization_servers_client_authentication_method" {
  description = "Map of client_authentication_method values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.client_authentication_method if v.client_authentication_method != null && length(v.client_authentication_method) > 0 }
}
output "api_management_authorization_servers_client_id" {
  description = "Map of client_id values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "api_management_authorization_servers_client_registration_endpoint" {
  description = "Map of client_registration_endpoint values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.client_registration_endpoint if v.client_registration_endpoint != null && length(v.client_registration_endpoint) > 0 }
}
output "api_management_authorization_servers_client_secret" {
  description = "Map of client_secret values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.client_secret if v.client_secret != null && length(v.client_secret) > 0 }
  sensitive   = true
}
output "api_management_authorization_servers_default_scope" {
  description = "Map of default_scope values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.default_scope if v.default_scope != null && length(v.default_scope) > 0 }
}
output "api_management_authorization_servers_description" {
  description = "Map of description values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.description if v.description != null && length(v.description) > 0 }
}
output "api_management_authorization_servers_display_name" {
  description = "Map of display_name values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "api_management_authorization_servers_grant_types" {
  description = "Map of grant_types values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.grant_types if v.grant_types != null && length(v.grant_types) > 0 }
}
output "api_management_authorization_servers_name" {
  description = "Map of name values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "api_management_authorization_servers_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "api_management_authorization_servers_resource_owner_password" {
  description = "Map of resource_owner_password values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.resource_owner_password if v.resource_owner_password != null && length(v.resource_owner_password) > 0 }
  sensitive   = true
}
output "api_management_authorization_servers_resource_owner_username" {
  description = "Map of resource_owner_username values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.resource_owner_username if v.resource_owner_username != null && length(v.resource_owner_username) > 0 }
}
output "api_management_authorization_servers_support_state" {
  description = "Map of support_state values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.support_state if v.support_state != null }
}
output "api_management_authorization_servers_token_body_parameter" {
  description = "Map of token_body_parameter values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.token_body_parameter if v.token_body_parameter != null && length(v.token_body_parameter) > 0 }
}
output "api_management_authorization_servers_token_endpoint" {
  description = "Map of token_endpoint values across all api_management_authorization_servers, keyed the same as var.api_management_authorization_servers"
  value       = { for k, v in azurerm_api_management_authorization_server.api_management_authorization_servers : k => v.token_endpoint if v.token_endpoint != null && length(v.token_endpoint) > 0 }
}

