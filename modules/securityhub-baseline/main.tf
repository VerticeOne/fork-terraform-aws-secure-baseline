data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

data "aws_organizations_organization" "org" {}

locals {
  is_org_root_account           = data.aws_caller_identity.current.account_id == data.aws_organizations_organization.org.master_account_id
  is_delegated_admin_account    = data.aws_caller_identity.current.account_id == var.delegated_admin_account_id
  is_securityhub_master_account = var.master_account_id == "" || (var.master_account_id == var.delegated_admin_account_id && local.is_delegated_admin_account)
  is_worker_account             = var.master_account_id != "" && !local.is_delegated_admin_account && !local.is_org_root_account

  member_accounts_map = { for member in var.member_accounts : member.account_id => { "email" = member.email } }
}

# --------------------------------------------------------------------------------------------------
# Enable SecurityHub
# --------------------------------------------------------------------------------------------------

resource "aws_securityhub_account" "main" {
  control_finding_generator = "SECURITY_CONTROL"
}

resource "aws_securityhub_finding_aggregator" "main" {
  count = var.aggregate_findings && var.master_account_id == "" ? 1 : 0

  linking_mode = "ALL_REGIONS"

  depends_on = [aws_securityhub_account.main]
}

# --------------------------------------------------------------------------------------------------
# Add member accounts
# --------------------------------------------------------------------------------------------------

resource "aws_securityhub_member" "members" {
  for_each = local.is_securityhub_master_account ? local.member_accounts_map : {}

  depends_on = [aws_securityhub_account.main]
  account_id = each.key
  email      = each.value.email
  invite     = !local.is_delegated_admin_account ? true : false

  lifecycle {
    ignore_changes = [
      # AWS API says `email` is optional and is not used in organizations, so
      # not returned by the ListMembers query.
      # Terraform provider currently marks it as required which causes a diff.
      email,
      # `invite` is only to be true for non-organization members. But Terraform
      # updates it based on `member_status`
      invite,
    ]
  }
}

resource "aws_securityhub_invite_accepter" "invitee" {
  count = local.is_worker_account && var.delegated_admin_account_id == "" ? 1 : 0

  master_id = var.master_account_id

  depends_on = [aws_securityhub_account.main]
}

# --------------------------------------------------------------------------------------------------
# Delegate administration to another account
# --------------------------------------------------------------------------------------------------

resource "aws_securityhub_organization_admin_account" "securityhub_baseline_delegated_admin" {
  count = local.is_org_root_account && var.delegated_admin_account_id != "" ? 1 : 0

  admin_account_id = var.delegated_admin_account_id

  depends_on = [aws_securityhub_account.main]
}

# --------------------------------------------------------------------------------------------------
# Delegated admin configuration & policies
# --------------------------------------------------------------------------------------------------

resource "aws_securityhub_organization_configuration" "this" {
  count = var.aggregate_findings && local.is_delegated_admin_account ? 1 : 0

  auto_enable           = false
  auto_enable_standards = "NONE"
  organization_configuration {
    configuration_type = "CENTRAL"
  }
}

resource "aws_securityhub_configuration_policy" "this" {
  for_each = var.aggregate_findings && local.is_delegated_admin_account ? var.configuration_policies : {}

  name        = each.key
  description = each.value.description

  configuration_policy {
    service_enabled       = each.value.enabled
    enabled_standard_arns = each.value.standard_arns
    dynamic "security_controls_configuration" {
      for_each = each.value.enabled ? [1] : []

      content {
        disabled_control_identifiers = each.value.disabled_controls
        enabled_control_identifiers  = each.value.enabled_controls
        dynamic "security_control_custom_parameter" {
          for_each = each.value.control_custom_parameters
          content {
            security_control_id = security_control_custom_parameter.value.control
            dynamic "parameter" {
              for_each = security_control_custom_parameter.value.parameters
              content {
                name       = parameter.value.name
                value_type = parameter.value.custom ? "CUSTOM" : "DEFAULT"
                dynamic "bool" {
                  for_each = parameter.value.bool != null ? [1] : []
                  content { value = parameter.value.bool }
                }
                dynamic "double" {
                  for_each = parameter.value.double != null ? [1] : []
                  content { value = parameter.value.double }
                }
                dynamic "enum" {
                  for_each = parameter.value.enum != null ? [1] : []
                  content { value = parameter.value.enum }
                }
                dynamic "enum_list" {
                  for_each = try([parameter.value.enum_list[0]], [])
                  content { value = parameter.value.enum_list }
                }
                dynamic "int" {
                  for_each = parameter.value.int != null ? [1] : []
                  content { value = parameter.value.int }
                }
                dynamic "int_list" {
                  for_each = try([parameter.value.int_list[0]], [])
                  content { value = parameter.value.int_list }
                }
                dynamic "string" {
                  for_each = parameter.value.string != null ? [1] : []
                  content { value = parameter.value.string }
                }
                dynamic "string_list" {
                  for_each = try([parameter.value.string_list[0]], [])
                  content { value = parameter.value.string_list }
                }
              }
            }
          }
        }
      }
    }
  }

  depends_on = [aws_securityhub_organization_configuration.this]
}

resource "aws_securityhub_configuration_policy_association" "this" {
  for_each = var.aggregate_findings && local.is_delegated_admin_account ? var.policy_assignments : {}

  target_id = each.value.target_id
  policy_id = aws_securityhub_configuration_policy.this[each.value.policy_name].id
}

# --------------------------------------------------------------------------------------------------
# Subscribe standards
# --------------------------------------------------------------------------------------------------

resource "aws_securityhub_standards_subscription" "cis" {
  count = var.enable_cis_standard ? 1 : 0

  standards_arn = "arn:aws:securityhub:${data.aws_region.current.name}::standards/cis-aws-foundations-benchmark/v/1.4.0"

  depends_on = [aws_securityhub_account.main]
}

resource "aws_securityhub_standards_subscription" "aws_foundational" {
  count = var.enable_aws_foundational_standard ? 1 : 0

  standards_arn = "arn:aws:securityhub:${data.aws_region.current.name}::standards/aws-foundational-security-best-practices/v/1.0.0"

  depends_on = [aws_securityhub_account.main]
}

resource "aws_securityhub_standards_subscription" "pci_dss" {
  count = var.enable_pci_dss_standard ? 1 : 0

  standards_arn = "arn:aws:securityhub:${data.aws_region.current.name}::standards/pci-dss/v/3.2.1"

  depends_on = [aws_securityhub_account.main]
}

# 3rd party products
resource "aws_securityhub_product_subscription" "products" {
  count = length(var.enable_product_arns)

  product_arn = replace(var.enable_product_arns[count.index], "<REGION>", data.aws_region.current.name)

  depends_on = [aws_securityhub_account.main]
}
