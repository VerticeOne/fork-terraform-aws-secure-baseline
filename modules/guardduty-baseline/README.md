# guardduty-baseline

Enable GuardDuty in all regions.

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
| <a name="input_delegated_admin_account_id"></a> [delegated\_admin\_account\_id](#input\_delegated\_admin\_account\_id) | AWS account ID within AWS Organization that should become delegated administrator of GuardDuty. This overrides the global `master_account_id` for GuardDuty and enforces AWS Organization-based account management instead of invite-based. | `string` | no |
| <a name="input_detector_features"></a> [detector\_features](#input\_detector\_features) | List of enabled detector features. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`. | `list(string)` | no |
| <a name="input_disable_email_notification"></a> [disable\_email\_notification](#input\_disable\_email\_notification) | Boolean whether an email notification is sent to the accounts. | `bool` | no |
| <a name="input_finding_publishing_frequency"></a> [finding\_publishing\_frequency](#input\_finding\_publishing\_frequency) | Specifies the frequency of notifications sent for subsequent finding occurrences. | `string` | no |
| <a name="input_invitation_message"></a> [invitation\_message](#input\_invitation\_message) | Message for invitation. | `string` | no |
| <a name="input_master_account_id"></a> [master\_account\_id](#input\_master\_account\_id) | AWS account ID for master account. | `string` | no |
| <a name="input_member_accounts"></a> [member\_accounts](#input\_member\_accounts) | A list of IDs and emails of AWS accounts to be associated as member accounts. | <pre>list(object({<br/>    account_id = string<br/>    email      = string<br/>  }))</pre> | no |
| <a name="input_org_configuration"></a> [org\_configuration](#input\_org\_configuration) | Shared organization configuration. Only applies for delegated administrator account. | <pre>object({<br/>    auto_enable_organization_members = optional(string, "NONE"),<br/>    auto_enable_s3_logs              = optional(bool, false)<br/>    enable_k8s_audit_logs            = optional(bool, false)<br/>    auto_enable_ebs_volumes_scan     = optional(bool, false)<br/>  })</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Specifies object tags key and value. This applies to all resources created by this module. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_guardduty_detector"></a> [guardduty\_detector](#output\_guardduty\_detector) | The GuardDuty detector. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
