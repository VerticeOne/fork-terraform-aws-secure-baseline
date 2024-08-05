# --------------------------------------------------------------------------------------------------
# Inspector Baseline
# Needs to be set up in each region.
# This is an extra configuration which is not included in CIS benchmark.
# --------------------------------------------------------------------------------------------------

locals {
  inspector_master_account_id = coalesce(var.inspector_delegated_admin_account_id, var.master_account_id)
  inspector_member_accounts   = length(var.inspector_member_accounts) > 0 ? var.inspector_member_accounts : var.member_accounts
}

module "inspector_baseline_ap-northeast-1" {
  count  = contains(var.target_regions, "ap-northeast-1") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.ap-northeast-1
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_ap-northeast-2" {
  count  = contains(var.target_regions, "ap-northeast-2") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.ap-northeast-2
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_ap-northeast-3" {
  count  = contains(var.target_regions, "ap-northeast-3") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.ap-northeast-3
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_ap-south-1" {
  count  = contains(var.target_regions, "ap-south-1") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.ap-south-1
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_ap-southeast-1" {
  count  = contains(var.target_regions, "ap-southeast-1") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.ap-southeast-1
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_ap-southeast-2" {
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.ap-southeast-2
  }

  count                      = contains(var.target_regions, "ap-southeast-2") && var.inspector_enabled ? 1 : 0
  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_ca-central-1" {
  count  = contains(var.target_regions, "ca-central-1") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.ca-central-1
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_eu-central-1" {
  count  = contains(var.target_regions, "eu-central-1") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.eu-central-1
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_eu-north-1" {
  count  = contains(var.target_regions, "eu-north-1") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.eu-north-1
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_eu-west-1" {
  count  = contains(var.target_regions, "eu-west-1") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.eu-west-1
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_eu-west-2" {
  count  = contains(var.target_regions, "eu-west-2") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.eu-west-2
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_eu-west-3" {
  count  = contains(var.target_regions, "eu-west-3") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.eu-west-3
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_sa-east-1" {
  count  = contains(var.target_regions, "sa-east-1") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.sa-east-1
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_us-east-1" {
  count  = contains(var.target_regions, "us-east-1") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.us-east-1
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_us-east-2" {
  count  = contains(var.target_regions, "us-east-2") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.us-east-2
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_us-west-1" {
  count  = contains(var.target_regions, "us-west-1") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.us-west-1
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}

module "inspector_baseline_us-west-2" {
  count  = contains(var.target_regions, "us-west-2") && var.inspector_enabled ? 1 : 0
  source = "./modules/inspector-baseline"

  providers = {
    aws = aws.us-west-2
  }

  resource_types             = var.inspector_resource_types
  master_account_id          = local.inspector_master_account_id
  member_accounts            = local.inspector_member_accounts
  delegated_admin_account_id = var.inspector_delegated_admin_account_id
}
