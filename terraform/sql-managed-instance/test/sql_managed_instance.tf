module "sql_managed_instance" {
  source = "git::https://github.com/Azure/azure-data-labs-modules.git//terraform/sql-managed-instance"

  basename = random_string.postfix.result
  rg_name  = var.rg_name
  location = var.location

  subnet_id = data.azurerm_subnet.snet_default.id

  administrator_login          = "sqladminuser"
  administrator_login_password = "ThisIsNotVerySecure!"

  module_enabled = true

  tags = {}
}

# Data dependencies

data "azurerm_subnet" "snet_default" {
  name                 = local.snet_name
  virtual_network_name = local.vnet_name
  resource_group_name  = var.rg_name
}