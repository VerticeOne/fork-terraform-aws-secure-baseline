data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# The public sharing of SSM documents is enabled in AWS by default, removing the terraform resource resets the SSM parameter to default value.
resource "aws_ssm_service_setting" "ssm_documents_public_sharing_permission" {
  count = var.ssm_documents_public_sharing_permission_disabled ? 1 : 0

  setting_id    = "arn:aws:ssm:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:servicesetting/ssm/documents/console/public-sharing-permission"
  setting_value = "Disable"
}
