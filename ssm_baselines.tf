# --------------------------------------------------------------------------------------------------
# AWS SSM Baseline
# Needs to be set up in each region.
# Global resource types are only recorded in the region specified by var.region.
# --------------------------------------------------------------------------------------------------

module "ssm_baseline_ap-northeast-1" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "ap-northeast-1") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.ap-northeast-1
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_ap-northeast-2" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "ap-northeast-2") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.ap-northeast-2
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_ap-northeast-3" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "ap-northeast-3") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.ap-northeast-3
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_ap-south-1" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "ap-south-1") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.ap-south-1
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_ap-southeast-1" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "ap-southeast-1") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.ap-southeast-1
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_ap-southeast-2" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "ap-southeast-2") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.ap-southeast-2
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_ca-central-1" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "ca-central-1") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.ca-central-1
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_eu-central-1" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "eu-central-1") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.eu-central-1
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_eu-north-1" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "eu-north-1") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.eu-north-1
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_eu-west-1" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "eu-west-1") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.eu-west-1
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_eu-west-2" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "eu-west-2") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.eu-west-2
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_eu-west-3" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "eu-west-3") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.eu-west-3
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_sa-east-1" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "sa-east-1") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.sa-east-1
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_us-east-1" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "us-east-1") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.us-east-1
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_us-east-2" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "us-east-2") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.us-east-2
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_us-west-1" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "us-west-1") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.us-west-1
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}

module "ssm_baseline_us-west-2" {
  count  = var.ssm_baseline_enabled && contains(var.target_regions, "us-west-2") ? 1 : 0
  source = "./modules/ssm-baseline"

  providers = {
    aws = aws.us-west-2
  }

  ssm_documents_public_sharing_permission_disabled = var.ssm_documents_public_sharing_permission_disabled
}
