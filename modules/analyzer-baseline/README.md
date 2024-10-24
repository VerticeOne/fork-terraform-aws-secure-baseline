# analyzer-baseline

## Features

- Enable IAM Acess Analyzer

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.3 |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="input_analyzer_name"></a> [analyzer\_name](#input\_analyzer\_name) | The name for the IAM Access Analyzer resource to be created. | `string` | no |
| <a name="input_archive_rules"></a> [archive\_rules](#input\_archive\_rules) | Specifies archive rules for the Access Analyzer. | <pre>map(list(object({<br/>    criteria   = string<br/>    comparator = string<br/>    values     = any<br/>  })))</pre> | no |
| <a name="input_delegated_admin_account_id"></a> [delegated\_admin\_account\_id](#input\_delegated\_admin\_account\_id) | AWS account ID within AWS Organization that should become delegated administrator of Access Analyzer. | `string` | no |
| <a name="input_global_findings_region"></a> [global\_findings\_region](#input\_global\_findings\_region) | (Optional) Region for which AccessAnalyzer will report findings for global resources (like IAM roles). If specified, suppression rules will be created for all other regions EXCEPT this one to deduplicate the findings. Default value is `null`, so findings for global resources are reported in every region. | `string` | no |
| <a name="input_is_organization"></a> [is\_organization](#input\_is\_organization) | The boolean flag whether this module is configured for the organization master account or the individual account. | `bool` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Specifies object tags key and value. This applies to all resources created by this module. | `map(string)` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
