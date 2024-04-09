variable "pod" {
  description = "name of pod"
  type        = string
}

variable "cloudid" {
  description = "cloud ID"
  type        = string
}

variable "env" {
  description = "environment"
  type        = string
}

variable "instance" {
  description = "instance number"
  type        = number
}

variable "vn_name" {
  description = "name of existing VN"
  type        = string
}

variable "username" {
  description = "enter new username"
  type        = string
}

variable "string_length" {
  description = "length of random string to be generated"
  type        = number
}

variable "resource_group_main" {
  description = "name of main resource group"
  type        = string
}

variable "resource_group_subnet" {
  description = "name of subnet resource group"
  type        = string
}

variable "sku" {
  description = "specify VM size"
  type        = string
}

variable "caching" {
  description = "define caching type"
  type        = string
  default = "ReadWrite"
}

variable "storage_account_type" {
  description = "define storage account type"
  type        = string
  default = "Standard_LRS"
}
