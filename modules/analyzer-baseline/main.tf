data "aws_caller_identity" "current" {}

data "aws_organizations_organization" "org" {}

data "aws_region" "current" {}

locals {
  archive_global_resource_findings_rules = {
    "TF_exclude_global_resource_finding_duplicates" = [
      {
        criteria   = "resource"
        comparator = "contains"
        values = [
          "arn:aws:iam::"
        ]
      }
    ]
  }
  archive_rules = (var.global_findings_region == null || var.global_findings_region == data.aws_region.current.name) ? var.archive_rules : merge(var.archive_rules, local.archive_global_resource_findings_rules)
}

resource "aws_accessanalyzer_analyzer" "default" {
  analyzer_name = var.analyzer_name
  type          = var.is_organization ? "ORGANIZATION" : "ACCOUNT"

  tags = var.tags
}

resource "aws_organizations_delegated_administrator" "accessanalyzer_analyzer_baseline_delegated_admin" {
  count = var.is_organization && data.aws_caller_identity.current.account_id == data.aws_organizations_organization.org.master_account_id && var.delegated_admin_account_id != "" ? 1 : 0

  account_id        = var.delegated_admin_account_id
  service_principal = "access-analyzer.amazonaws.com"
}

resource "aws_accessanalyzer_archive_rule" "aa_archive_rule" {
  for_each = local.archive_rules

  analyzer_name = aws_accessanalyzer_analyzer.default.analyzer_name
  rule_name     = each.key

  dynamic "filter" {
    for_each = { for record in each.value : "${record.comparator}-${record.criteria}" => record if record.comparator == "contains" }

    content {
      criteria = filter.value.criteria
      contains = filter.value.values
    }
  }

  dynamic "filter" {
    for_each = { for record in each.value : "${record.comparator}-${record.criteria}" => record if record.comparator == "eq" }

    content {
      criteria = filter.value.criteria
      eq       = filter.value.values
    }
  }

  dynamic "filter" {
    for_each = { for record in each.value : "${record.comparator}-${record.criteria}" => record if record.comparator == "neq" }

    content {
      criteria = filter.value.criteria
      neq      = filter.value.values
    }
  }

  dynamic "filter" {
    for_each = { for record in each.value : "${record.comparator}-${record.criteria}" => record if record.comparator == "exists" }

    content {
      criteria = filter.value.criteria
      exists   = filter.value.values
    }
  }
}
