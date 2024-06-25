variable "analyzer_name" {
  description = "The name for the IAM Access Analyzer resource to be created."
  type        = string
  default     = "default-analyer"
}

variable "is_organization" {
  description = "The boolean flag whether this module is configured for the organization master account or the individual account."
  type        = bool
  default     = false
}

variable "delegated_admin_account_id" {
  description = "AWS account ID withing AWS Organization that should become delegated administrator of Access Analyzer."
  type        = string
  default     = ""
}

variable "archive_rules" {
  description = "Specifies archive rules for the Access Analyzer."
  type = map(list(object({
    criteria   = string
    comparator = string
    values     = any
  })))
  default = {}
}

variable "tags" {
  description = "Specifies object tags key and value. This applies to all resources created by this module."
  type        = map(string)
  default = {
    "Terraform" = "true"
  }
}
