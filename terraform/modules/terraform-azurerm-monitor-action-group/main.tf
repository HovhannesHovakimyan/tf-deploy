resource "azurerm_monitor_action_group" "this" {
  for_each = var.azurerm_monitor_action_group_params

  name                = each.value.name                # Required
  resource_group_name = each.value.resource_group_name # Required
  short_name          = each.value.short_name          # Required
  enabled             = each.value.enabled
  location            = each.value.location
  tags                = each.value.tags

  dynamic "arm_role_receiver" {
    iterator = armrr
    for_each = each.value.arm_role_receiver

    content {
      name                    = armrr.value.name    # Required
      role_id                 = armrr.value.role_id # Required
      use_common_alert_schema = armrr.value.use_common_alert_schema
    }
  }

  dynamic "automation_runbook_receiver" {
    iterator = autrr
    for_each = each.value.automation_runbook_receiver

    content {
      name                    = autrr.value.name                  # Required
      automation_account_id   = autrr.value.automation_account_id # Required
      runbook_name            = autrr.value.runbook_name          # Required
      webhook_resource_id     = autrr.value.webhook_resource_id   # Required
      is_global_runbook       = autrr.value.is_global_runbook     # Required
      service_uri             = autrr.value.service_uri           # Required
      use_common_alert_schema = autrr.value.use_common_alert_schema
    }
  }

  dynamic "azure_app_push_receiver" {
    iterator = aapr
    for_each = each.value.azure_app_push_receiver

    content {
      name          = aapr.value.name          # Required
      email_address = aapr.value.email_address # Required
    }
  }

  dynamic "azure_function_receiver" {
    iterator = afr
    for_each = each.value.azure_function_receiver

    content {
      name                     = afr.value.name                     # Required
      function_app_resource_id = afr.value.function_app_resource_id # Required
      function_name            = afr.value.function_name            # Required
      http_trigger_url         = afr.value.http_trigger_url         # Required
      use_common_alert_schema  = afr.value.use_common_alert_schema
    }
  }

  dynamic "email_receiver" {
    iterator = er
    for_each = each.value.email_receiver

    content {
      name                    = er.value.name          # Required
      email_address           = er.value.email_address # Required
      use_common_alert_schema = er.value.use_common_alert_schema
    }
  }

  dynamic "event_hub_receiver" {
    iterator = ehr
    for_each = each.value.event_hub_receiver

    content {
      name                    = ehr.value.name # Required
      event_hub_name          = ehr.value.event_hub_name
      event_hub_namespace     = ehr.value.event_hub_namespace
      subscription_id         = ehr.value.subscription_id
      tenant_id               = ehr.value.tenant_id
      use_common_alert_schema = ehr.value.use_common_alert_schema
    }
  }

  dynamic "itsm_receiver" {
    iterator = ir
    for_each = each.value.itsm_receiver

    content {
      name                 = ir.value.name                 # Required
      workspace_id         = ir.value.workspace_id         # Required
      connection_id        = ir.value.connection_id        # Required
      ticket_configuration = ir.value.ticket_configuration # Required
      region               = ir.value.region               # Required
    }
  }

  dynamic "logic_app_receiver" {
    iterator = lar
    for_each = each.value.logic_app_receiver

    content {
      name                    = lar.value.name         # Required
      resource_id             = lar.value.resource_id  # Required
      callback_url            = lar.value.callback_url # Required
      use_common_alert_schema = lar.value.use_common_alert_schema
    }
  }

  dynamic "sms_receiver" {
    iterator = sr
    for_each = each.value.sms_receiver

    content {
      name         = sr.value.name         # Required
      country_code = sr.value.country_code # Required
      phone_number = sr.value.phone_number # Required
    }
  }

  dynamic "voice_receiver" {
    iterator = vr
    for_each = each.value.voice_receiver

    content {
      name         = vr.value.name         # Required
      country_code = vr.value.country_code # Required
      phone_number = vr.value.phone_number # Required
    }
  }

  dynamic "webhook_receiver" {
    iterator = wr
    for_each = each.value.webhook_receiver

    content {
      name                    = wr.value.name        # Required
      service_uri             = wr.value.service_uri # Required
      use_common_alert_schema = wr.value.use_common_alert_schema
      dynamic "aad_auth" {
        iterator = aa
        for_each = wr.valueaad_auth

        content {
          object_id      = aa.value.object_id # Required
          identifier_uri = aa.value.identifier_uri
          tenant_id      = aa.value.tenant_id
        }
      }
    }
  }
}
