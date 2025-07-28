# ssm-baseline

## Features

- Disable public sharing of SSM documents

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.3 |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="input_ssm_documents_public_sharing_permission_disabled"></a> [ssm\_documents\_public\_sharing\_permission\_disabled](#input\_ssm\_documents\_public\_sharing\_permission\_disabled) | Whether AWS SSM should block public sharing of SSM documents in this account and region. Defaults to true. | `bool` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
