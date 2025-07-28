variable "ssm_documents_public_sharing_permission_disabled" {
  description = "Whether AWS SSM should block public sharing of SSM documents in this account and region. Defaults to true."
  type        = bool
  default     = true
}
