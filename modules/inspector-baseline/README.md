# inspector-baseline

Enable Inspector in all regions.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.3 |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="input_delegated_admin_account_id"></a> [delegated\_admin\_account\_id](#input\_delegated\_admin\_account\_id) | AWS account ID within AWS Organization that should become delegated administrator of Inspector. This overrides the global `master_account_id` for Inspector and enforces AWS Organization-based account management instead of invite-based. | `string` | no |
| <a name="input_master_account_id"></a> [master\_account\_id](#input\_master\_account\_id) | AWS account ID for master account. | `string` | no |
| <a name="input_member_accounts"></a> [member\_accounts](#input\_member\_accounts) | A list of IDs and emails of AWS accounts to be associated as member accounts. | <pre>list(object({<br/>    account_id = string<br/>    email      = string<br/>  }))</pre> | no |
| <a name="input_resource_types"></a> [resource\_types](#input\_resource\_types) | Specifies the types of resources to be scanned with Inspector. | `list(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_inspector_enabler"></a> [inspector\_enabler](#output\_inspector\_enabler) | The Inspector enabler. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
