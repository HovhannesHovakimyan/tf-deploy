# data "azurerm_client_config" "current" {}

module "monitor_action_group" {
  source  = "app.terraform.io/captionhealth/monitor-action-group/azurerm"
  version = "1.0.0"

  azurerm_monitor_action_group_params = {
    monitor_action_group_1 = {
      name                = "CriticalAlertsAction"                                # Required
      resource_group_name = module.resource_group.resource_groups["main_rg"].name # Required
      short_name          = "p0action"                                            # Required
      enabled             = true
      location            = null
      tags                = module.tags.tags

      arm_role_receiver = [
        # {
        #   name                    = "armroleaction"                        # Required
        #   role_id                 = "de139f84-1756-47ae-9be6-808fbbe84772" # Required
        #   use_common_alert_schema = true
        # }
      ]

      automation_runbook_receiver = [
        # {
        #   name                    = "action_name_1"                                                                                                                                                  # Required
        #   automation_account_id   = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001"                        # Required
        #   runbook_name            = "my runbook"                                                                                                                                                     # Required
        #   webhook_resource_id     = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001/webHooks/webhook_alert" # Required
        #   is_global_runbook       = true                                                                                                                                                             # Required
        #   service_uri             = "https://s13events.azure-automation.net/webhooks?token=randomtoken"                                                                                              # Required
        #   use_common_alert_schema = true
        # }
      ]

      azure_app_push_receiver = [
        # {
        #   name          = "pushtoadmin"              # Required
        #   email_address = "devops@captionhealth.com" # Required
        # }
      ]

      azure_function_receiver = [
        # {
        #   name                     = "funcaction"                                                                                                          # Required
        #   function_app_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-funcapp/providers/Microsoft.Web/sites/funcapp" # Required
        #   function_name            = "myfunc"                                                                                                              # Required
        #   http_trigger_url         = "https://example.com/trigger"                                                                                         # Required
        #   use_common_alert_schema  = true
        # }
      ]

      email_receiver = [
        # {
        #   name                    = "sendtoadmin"              # Required
        #   email_address           = "devops@captionhealth.com" # Required
        #   use_common_alert_schema = true
        # }
      ]

      event_hub_receiver = [
        # {
        #   name                    = "sendtoeventhub" # Required
        #   event_hub_namespace     = "eventhubnamespace"
        #   event_hub_name          = "eventhub1"
        #   subscription_id         = "00000000-0000-0000-0000-000000000000"
        #   use_common_alert_schema = false
        # }
      ]

      itsm_receiver = [
        # {
        #   name                 = "createorupdateticket"                                                                                                                                          # Required
        #   workspace_id         = "${data.azurerm_client_config.current.subscription_id}|${module.log_analytics_workspace.log_analytics_workspaces["main_log_analytics_workspace"].workspace_id}" # Required
        #   connection_id        = "53de6956-42b4-41ba-be3c-b154cdf17b13"                                                                                                                          # Required
        #   ticket_configuration = "{\"PayloadRevision\":0,\"WorkItemType\":\"Incident\",\"UseTemplate\":false,\"WorkItemData\":\"{}\",\"CreateOneWIPerCI\":false}"                                # Required
        #   region               = "southcentralus"                                                                                                                                                # Required
        # }
      ]

      logic_app_receiver = [
        # {
        #   name                    = "logicappaction"                                                                                                              # Required
        #   resource_id             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-logicapp/providers/Microsoft.Logic/workflows/logicapp" # Required
        #   callback_url            = "https://logicapptriggerurl/..."                                                                                              # Required
        #   use_common_alert_schema = true
        # }
      ]

      sms_receiver = [
        # {
        #   name         = "oncallmsg"  # Required
        #   country_code = "1"          # Required
        #   phone_number = "1231231234" # Required
        # }
      ]

      voice_receiver = [
        # {
        #   name         = "remotesupport" # Required
        #   country_code = "86"            # Required
        #   phone_number = "13888888888"   # Required
        # }
      ]

      webhook_receiver = [
        # {
        #   name                    = "callmyapiaswell"          # Required
        #   service_uri             = "http://example.com/alert" # Required
        #   use_common_alert_schema = true
        #   aad_auth = [
        #     {
        #       object_id      = module.service_principal.service_principals["monitoring"].object_id # Required
        #       identifier_uri = null
        #       tenant_id      = null
        #     }
        #   ]
        # }
      ]
    }
  }
}
