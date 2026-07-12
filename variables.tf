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
    - default_scope
    - description
    - resource_owner_password
    - resource_owner_username
    - support_state
    - token_endpoint
    - token_body_parameter (block):
        - name (required)
        - value (required)
EOT

  type = map(object({
    api_management_name          = string
    name                         = string
    grant_types                  = set(string)
    display_name                 = string
    resource_group_name          = string
    client_id                    = string
    authorization_methods        = set(string)
    authorization_endpoint       = string
    client_registration_endpoint = string
    support_state                = optional(bool)
    bearer_token_sending_methods = optional(set(string))
    client_authentication_method = optional(set(string))
    client_secret                = optional(string)
    default_scope                = optional(string)
    description                  = optional(string)
    resource_owner_password      = optional(string)
    resource_owner_username      = optional(string)
    token_endpoint               = optional(string)
    token_body_parameter = optional(list(object({
      name  = string
      value = string
    })))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_authorization_server's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.ApiManagementChildName] !matched
  # path: api_management_name
  #   source:    [from validate.ApiManagementServiceName] !matched
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: authorization_endpoint
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: authorization_methods[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: client_id
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: client_registration_endpoint
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: display_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: grant_types[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: bearer_token_sending_methods[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: client_authentication_method[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: token_body_parameter.name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: token_body_parameter.value
  #   condition: length(value) > 0
  #   message:   must not be empty
}

