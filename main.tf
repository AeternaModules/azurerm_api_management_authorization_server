data "azurerm_key_vault_secret" "client_secret" {
  for_each     = { for k, v in var.api_management_authorization_servers : k => v if v.client_secret_key_vault_id != null && v.client_secret_key_vault_secret_name != null }
  name         = each.value.client_secret_key_vault_secret_name
  key_vault_id = each.value.client_secret_key_vault_id
}
data "azurerm_key_vault_secret" "resource_owner_password" {
  for_each     = { for k, v in var.api_management_authorization_servers : k => v if v.resource_owner_password_key_vault_id != null && v.resource_owner_password_key_vault_secret_name != null }
  name         = each.value.resource_owner_password_key_vault_secret_name
  key_vault_id = each.value.resource_owner_password_key_vault_id
}
resource "azurerm_api_management_authorization_server" "api_management_authorization_servers" {
  for_each = var.api_management_authorization_servers

  api_management_name          = each.value.api_management_name
  name                         = each.value.name
  grant_types                  = each.value.grant_types
  display_name                 = each.value.display_name
  resource_group_name          = each.value.resource_group_name
  client_id                    = each.value.client_id
  authorization_methods        = each.value.authorization_methods
  authorization_endpoint       = each.value.authorization_endpoint
  client_registration_endpoint = each.value.client_registration_endpoint
  support_state                = each.value.support_state
  bearer_token_sending_methods = each.value.bearer_token_sending_methods
  client_authentication_method = each.value.client_authentication_method
  client_secret                = each.value.client_secret != null ? each.value.client_secret : try(data.azurerm_key_vault_secret.client_secret[each.key].value, null)
  default_scope                = each.value.default_scope
  description                  = each.value.description
  resource_owner_password      = each.value.resource_owner_password != null ? each.value.resource_owner_password : try(data.azurerm_key_vault_secret.resource_owner_password[each.key].value, null)
  resource_owner_username      = each.value.resource_owner_username
  token_endpoint               = each.value.token_endpoint

  dynamic "token_body_parameter" {
    for_each = each.value.token_body_parameter != null ? each.value.token_body_parameter : []
    content {
      name  = token_body_parameter.value.name
      value = token_body_parameter.value.value
    }
  }
}

