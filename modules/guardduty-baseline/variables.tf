variable "disable_email_notification" {
  description = "Boolean whether an email notification is sent to the accounts."
  type        = bool
  default     = false
}

variable "finding_publishing_frequency" {
  description = "Specifies the frequency of notifications sent for subsequent finding occurrences."
  type        = string
  default     = "SIX_HOURS"
}

variable "detector_features" {
  description = "List of enabled detector features. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`."
  type        = list(string)
  default     = ["S3_DATA_EVENTS"]
}

variable "invitation_message" {
  description = "Message for invitation."
  type        = string
  default     = "This is an automatic invitation message from guardduty-baseline module."
}

variable "master_account_id" {
  description = "AWS account ID for master account."
  type        = string
  default     = ""
}

variable "member_accounts" {
  description = "A list of IDs and emails of AWS accounts to be associated as member accounts."
  type = list(object({
    account_id = string
    email      = string
  }))
  default = []
}

variable "delegated_admin_account_id" {
  description = "AWS account ID within AWS Organization that should become delegated administrator of GuardDuty. This overrides the global `master_account_id` for GuardDuty and enforces AWS Organization-based account management instead of invite-based."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Specifies object tags key and value. This applies to all resources created by this module."
  type        = map(string)
  default = {
    "Terraform" = "true"
  }
}

variable "org_configuration" {
  description = "Shared organization configuration. Only applies for delegated administrator account."
  type = object({
    auto_enable_organization_members = optional(string, "NONE"),
    auto_enable_s3_logs              = optional(bool, false)
    enable_k8s_audit_logs            = optional(bool, false)
    auto_enable_ebs_volumes_scan     = optional(bool, false)
  })
  default = {}
}
