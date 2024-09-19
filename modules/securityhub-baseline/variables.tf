variable "aggregate_findings" {
  description = "Boolean whether to enable finding aggregator for every region"
  type        = bool
  default     = false
}

variable "enable_cis_standard" {
  description = "Boolean whether CIS standard is enabled."
  type        = bool
  default     = true
}

variable "enable_pci_dss_standard" {
  description = "Boolean whether PCI DSS standard is enabled."
  type        = bool
  default     = true
}

variable "enable_aws_foundational_standard" {
  description = "Boolean whether AWS Foundations standard is enabled."
  type        = bool
  default     = true
}

variable "enable_product_arns" {
  description = "List of Security Hub product ARNs, `<REGION>` will be replaced. See https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-partner-providers.html for list."
  type        = list(string)
  default     = []
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
  description = "AWS account ID within AWS Organization that should become delegated administrator of SecurityHub. This overrides the global `master_account_id` for SecurityHub and enforces AWS Organization-based account management instead of invite-based."
  type        = string
  default     = ""
}

variable "configuration_policies" {
  description = "Configuration policy definitions for Security Hub. Note: this only works if delegated admin account is used."
  type = map(object({
    description       = string,
    enabled           = bool,
    standard_arns     = list(string),
    disabled_controls = optional(list(string)),
    enabled_controls  = optional(list(string)),
    control_custom_parameters = optional(list(object({
      control = string,
      parameters = list(object({
        name        = string,
        custom      = optional(bool, true),
        bool        = optional(bool),
        double      = optional(number),
        enum        = optional(string),
        enum_list   = optional(list(string)),
        int         = optional(number),
        int_list    = optional(list(number)),
        string      = optional(string),
        string_list = optional(list(string)),
      })),
    })), []),
  }))
  default = {}
}

variable "policy_assignments" {
  description = "Assignments of Security Hub configuration policies to target accounts or OUs. Note: this only works if delegated admin account is used."
  type = map(object({
    target_id   = string,
    policy_name = string,
  }))
  default = {}
}
