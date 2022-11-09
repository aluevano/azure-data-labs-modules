# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_managed_instance

resource "azurerm_mssql_managed_instance" "adl_sqlmi" {
  name                = "sqlmi-${var.basename}"
  resource_group_name = var.rg_name
  location            = var.location

  license_type       = var.license_type
  sku_name           = var.sku_name
  storage_size_in_gb = var.storage_size_in_gb
  subnet_id          = var.subnet_id
  vcores             = var.vcores

  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  count = var.module_enabled ? 1 : 0
  tags  = var.tags
}