variable "azurerm_monitor_action_group_params" {
  description = "Object map for Azure Monitor Action Group module input parameters."

  type = map(object({
    name                = string # Required
    resource_group_name = string # Required
    short_name          = string # Required
    enabled             = bool
    location            = string
    tags                = map(string)

    arm_role_receiver = list(object({
      name                    = string # Required
      role_id                 = string # Required
      use_common_alert_schema = bool
    }))

    automation_runbook_receiver = list(object({
      name                    = string # Required
      automation_account_id   = string # Required
      runbook_name            = string # Required
      webhook_resource_id     = string # Required
      is_global_runbook       = bool   # Required
      service_uri             = string # Required
      use_common_alert_schema = bool
    }))

    azure_app_push_receiver = list(object({
      name          = string # Required
      email_address = string # Required
    }))

    azure_function_receiver = list(object({
      name                     = string # Required
      function_app_resource_id = string # Required
      function_name            = string # Required
      http_trigger_url         = string # Required
      use_common_alert_schema  = bool
    }))

    email_receiver = list(object({
      name                    = string # Required
      email_address           = string # Required
      use_common_alert_schema = bool
    }))

    event_hub_receiver = list(object({
      name                    = string # Required
      event_hub_name          = string
      event_hub_namespace     = string
      subscription_id         = string
      tenant_id               = string
      use_common_alert_schema = bool
    }))

    itsm_receiver = list(object({
      name                 = string # Required
      workspace_id         = string # Required
      connection_id        = string # Required
      ticket_configuration = string # Required
      region               = string # Required
    }))

    logic_app_receiver = list(object({
      name                    = string # Required
      resource_id             = string # Required
      callback_url            = string # Required
      use_common_alert_schema = bool
    }))

    sms_receiver = list(object({
      name         = string # Required
      country_code = string # Required
      phone_number = string # Required
    }))

    voice_receiver = list(object({
      name         = string # Required
      country_code = string # Required
      phone_number = string # Required
    }))

    webhook_receiver = list(object({
      name                    = string # Required
      service_uri             = string # Required
      use_common_alert_schema = bool
      aad_auth = list(object({
        object_id      = string # Required
        identifier_uri = string
        tenant_id      = string
      }))
    }))
  }))
}
