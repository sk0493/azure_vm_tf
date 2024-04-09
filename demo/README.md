## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 2.90.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tf_azure_vm"></a> [tf\_azure\_vm](#module\_tf\_azure\_vm) | ../ | n/a |

## Resources

No resources.

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
