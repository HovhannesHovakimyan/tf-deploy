module "application_insights_web_test" {
  source  = "app.terraform.io/captionhealth/application-insights-web-test/azurerm"
  version = "1.0.0"

  azurerm_application_insights_web_test_params = {
    application_insights_web_test_1 = {
      name                    = "tf-test-appinsights-webtest"                                                     # Required
      resource_group_name     = module.resource_group.resource_groups["main_rg"].name                             # Required
      application_insights_id = module.application_insights.application_insights["application_insights"].id       # Required
      location                = module.application_insights.application_insights["application_insights"].location # Required
      kind                    = "ping"                                                                            # Required
      geo_locations           = ["us-tx-sn1-azr", "us-il-ch1-azr"]                                                # Required
      # Required
      configuration = <<XML
<WebTest Name="WebTest1" Id="ABD48585-0831-40CB-9069-682EA6BB3583" Enabled="True" CssProjectStructure="" CssIteration="" Timeout="0" WorkItemIds="" xmlns="http://microsoft.com/schemas/VisualStudio/TeamTest/2010" Description="" CredentialUserName="" CredentialPassword="" PreAuthenticate="True" Proxy="default" StopOnError="False" RecordedResultFile="" ResultsLocale="">
  <Items>
    <Request Method="GET" Guid="a5f10126-e4cd-570d-961c-cea43999a200" Version="1.1" Url="http://microsoft.com" ThinkTime="0" Timeout="300" ParseDependentRequests="True" FollowRedirects="True" RecordResult="True" Cache="False" ResponseTimeGoal="0" Encoding="utf-8" ExpectedHttpStatusCode="200" ExpectedResponseUrl="" ReportingName="" IgnoreHttpStatusCode="False" />
  </Items>
</WebTest>
XML
      frequency     = "ping"
      timeout       = 60
      enabled       = true
      retry_enabled = null
      description   = null
      tags          = module.tags.tags
    }
  }
}
