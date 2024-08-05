variable "resource_types" {
  description = "Specifies the types of resources to be scanned with Inspector."
  type        = list(string)
  default = [
    "EC2",
    "ECR",
    "LAMBDA",
    "LAMBDA_CODE",
  ]
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
  description = "AWS account ID within AWS Organization that should become delegated administrator of Inspector. This overrides the global `master_account_id` for Inspector and enforces AWS Organization-based account management instead of invite-based."
  type        = string
  default     = ""
}
