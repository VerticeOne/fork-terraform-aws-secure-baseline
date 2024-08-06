data "aws_caller_identity" "current" {}

data "aws_organizations_organization" "org" {}

locals {
  is_org_root_account         = data.aws_caller_identity.current.account_id == data.aws_organizations_organization.org.master_account_id
  is_delegated_admin_account  = data.aws_caller_identity.current.account_id == var.delegated_admin_account_id
  is_inspector_master_account = var.master_account_id == "" || (var.master_account_id == var.delegated_admin_account_id && local.is_delegated_admin_account)

  member_accounts_map = { for member in var.member_accounts : member.account_id => { "account_id" = member.account_id } }
}

resource "aws_inspector2_enabler" "default" {
  count = local.is_inspector_master_account ? 1 : 0

  account_ids = [
    var.master_account_id,
  ]

  resource_types = var.resource_types
}

resource "aws_inspector2_delegated_admin_account" "inspector_baseline_delegated_admin" {
  count = local.is_org_root_account && var.delegated_admin_account_id != "" ? 1 : 0

  account_id = var.delegated_admin_account_id
}

resource "aws_inspector2_member_association" "inspector_member" {
  for_each = local.is_inspector_master_account ? local.member_accounts_map : {}

  account_id = each.value.account_id

  depends_on = [
    aws_inspector2_enabler.default
  ]
}

resource "aws_inspector2_enabler" "inspector_member" {
  for_each = local.is_inspector_master_account ? local.member_accounts_map : {}

  account_ids    = [each.value.account_id]
  resource_types = var.resource_types

  depends_on = [
    aws_inspector2_member_association.inspector_member
  ]
}
