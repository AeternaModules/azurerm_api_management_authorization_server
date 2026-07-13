variable "api_management_authorization_servers" {
  description = <<EOT
Map of api_management_authorization_servers, attributes below
Required:
    - api_management_name
    - authorization_endpoint
    - authorization_methods
    - client_id
    - client_registration_endpoint
    - display_name
    - grant_types
    - name
    - resource_group_name
Optional:
    - bearer_token_sending_methods
    - client_authentication_method
    - client_secret
    - client_secret_key_vault_id (alternative to client_secret - read from Key Vault instead)
    - client_secret_key_vault_secret_name (alternative to client_secret - read from Key Vault instead)
    - default_scope
    - description
    - resource_owner_password
    - resource_owner_password_key_vault_id (alternative to resource_owner_password - read from Key Vault instead)
    - resource_owner_password_key_vault_secret_name (alternative to resource_owner_password - read from Key Vault instead)
    - resource_owner_username
    - support_state
    - token_endpoint
    - token_body_parameter (block):
        - name (required)
        - value (required)
EOT

  type = map(object({
    api_management_name                           = string
    name                                          = string
    grant_types                                   = set(string)
    display_name                                  = string
    resource_group_name                           = string
    client_id                                     = string
    authorization_methods                         = set(string)
    authorization_endpoint                        = string
    client_registration_endpoint                  = string
    support_state                                 = optional(bool)
    bearer_token_sending_methods                  = optional(set(string))
    client_authentication_method                  = optional(set(string))
    client_secret                                 = optional(string)
    client_secret_key_vault_id                    = optional(string)
    client_secret_key_vault_secret_name           = optional(string)
    default_scope                                 = optional(string)
    description                                   = optional(string)
    resource_owner_password                       = optional(string)
    resource_owner_password_key_vault_id          = optional(string)
    resource_owner_password_key_vault_secret_name = optional(string)
    resource_owner_username                       = optional(string)
    token_endpoint                                = optional(string)
    token_body_parameter = optional(list(object({
      name  = string
      value = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_authorization_servers : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_authorization_servers : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_authorization_servers : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_authorization_servers : (
        length(v.authorization_endpoint) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_authorization_servers : (
        length(v.client_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_authorization_servers : (
        length(v.client_registration_endpoint) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_authorization_servers : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_authorization_servers : (
        v.token_body_parameter == null || alltrue([for item in v.token_body_parameter : (length(item.name) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_authorization_servers : (
        v.token_body_parameter == null || alltrue([for item in v.token_body_parameter : (length(item.value) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

