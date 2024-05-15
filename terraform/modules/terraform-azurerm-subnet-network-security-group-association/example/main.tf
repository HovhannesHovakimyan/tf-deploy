module "subnet_nsg_association" {
  source  = "app.terraform.io/captionhealth/subnet-network-security-group-association/azurerm"
  version = "1.0.0"

  azurerm_subnet_network_security_group_association_params = {
    subnet_nsg_association_1 = {
      network_security_group_id = module.network_security_group.network_security_groups["network_security_group_1"].id # Required
      subnet_id                 = module.subnet.subnets["subnet_1"].id                                                 # Required
    }
  }
}
