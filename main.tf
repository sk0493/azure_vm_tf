locals {
  vm_name          = format("vm%s%s%d",var.cloudid, var.env, var.instance)
  nic_name         = format("nic-%s-%s-%d",var.cloudid, var.env, var.instance)
  ip_configuration = format("ip-%s-%s-%d",var.cloudid, var.env, var.instance)
  default_tags = tomap({
    "user"   = var.cloudid
    "pod"    = var.pod
  })
}

data "azurerm_resource_group" "main" {
  name = var.resource_group_main
}

data "azurerm_resource_group" "subnet_rg" {
  name = var.resource_group_subnet
}

data "azurerm_subnet" "main" {
  name                 = "default"
  virtual_network_name = var.vn_name
  resource_group_name  = data.azurerm_resource_group.subnet_rg.name
}

#Creates network interface card (NIC)
resource "azurerm_network_interface" "internal" {
  name                = local.nic_name
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name

  ip_configuration {
    name                          = local.ip_configuration
    subnet_id                     = data.azurerm_subnet.main.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "random_string" "random" {
  length  = var.string_length
  special = true
}

#Creates Virtual Machine 
# A much safer way for login would be to use a Azure key vault
resource "azurerm_windows_virtual_machine" "main" {
  name                = local.vm_name
  resource_group_name = data.azurerm_resource_group.main.name
  location            = data.azurerm_resource_group.main.location
  size                = var.sku
  admin_username      = var.username
  admin_password      = random_string.random.result
  network_interface_ids = [
    azurerm_network_interface.internal.id
  ]

  os_disk {
    caching              = var.caching
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-DataCenter"
    version   = "latest"
  }

  tags = local.default_tags
}

resource "azurerm_dev_test_global_vm_shutdown_schedule" "windows_vm" {
  virtual_machine_id    = azurerm_windows_virtual_machine.main.id
  location              = azurerm_windows_virtual_machine.main.location
  enabled               = true
  daily_recurrence_time = "1745"
  timezone              = "GMT Standard Time"
  notification_settings {
    enabled = false
  }
}
