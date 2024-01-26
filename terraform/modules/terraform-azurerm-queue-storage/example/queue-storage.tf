module "queue_storage" {
  source  = "app.terraform.io/captionhealth/queue-storage/azurerm"
  version = "1.0.0"

  azurerm_storage_queue_params = {
    main_queue_storage = {
      name                 = "hhcompqs" # required
      storage_account_name = "hhcompsa" # required
      metadata             = null
    }
  }
}
