variable "basename" {
  type        = string
  description = "Basename of the module"
}

variable "rg_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Location of the resource group"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A mapping of tags which should be assigned to the deployed resource"
}

variable "module_enabled" {
  type        = bool
  description = "Variable to enable or disable the module"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet from which private IP addresses will be allocated for this Private Endpoint"
}

variable "license_type" {
  type        = string
  description = "What type of license the Managed Instance will use"
  default     = "BasePrice"
}

variable "sku_name" {
  type        = string
  description = "Specifies the SKU Name for the SQL Managed Instance"
  default     = "GP_Gen5"
}

variable "storage_size_in_gb" {
  type        = number
  description = "Maximum storage space for the SQL Managed instance"
  default     = 32
}

variable "vcores" {
  type        = number
  description = "Number of cores that should be assigned to the SQL Managed Instance"
  default     = 4
}

variable "administrator_login" {
  type        = string
  description = "The administrator login name for the new server"
}

variable "administrator_login_password" {
  type        = string
  description = "The password associated with the administrator_login"
}