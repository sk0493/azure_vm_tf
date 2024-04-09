# Example values
module "tf_azure_vm" {
  source        = "../"
  pod           = "practice"
  cloudid       = "sk0493"
  env           = "sbx"
  instance      = 1
  vn_name       = "myvnet"
  username      = "adminuser"
  string_length = 9
  resource_group_main = "rg-001winvm"
  resource_group_subnet = "rg-001winvm-sbnet"
  sku = "Standard_A1_v2"
}