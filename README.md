## Scope

This Terraform project creates an Azure windows virtual machine.

I adhered to naming conventions, the module is parameterised with variables, and included a demo folder on how to use the module.

Included is also a pr_pipeline.yaml file that is used to run a PR pipeline on Azure DevOps. The tests are basic. 

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 2.90.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.90.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_dev_test_global_vm_shutdown_schedule.windows_vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dev_test_global_vm_shutdown_schedule) | resource |
| [azurerm_network_interface.internal](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_windows_virtual_machine.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine) | resource |
| [random_string.random](https://registry.terraform.io/providers/hashicorp/random/3.1.0/docs/resources/string) | resource |
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_resource_group.subnet_rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_subnet.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudid"></a> [cloudid](#input\_cloudid) | cloud ID | `string` | n/a | yes |
| <a name="input_cohortid"></a> [cohortid](#input\_cohortid) | cohort ID | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | environment | `string` | n/a | yes |
| <a name="input_instance"></a> [instance](#input\_instance) | instance number | `number` | n/a | yes |
| <a name="input_pod"></a> [pod](#input\_pod) | name of pod | `string` | n/a | yes |
| <a name="input_string_length"></a> [string\_length](#input\_string\_length) | length of random string to be generated | `number` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | enter new username | `string` | n/a | yes |
| <a name="input_vn_name"></a> [vn\_name](#input\_vn\_name) | name of existing VN | `string` | n/a | yes |

## Outputs

No outputs.
