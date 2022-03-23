resource "snowflake_storage_integration" "tech_talk_integration" {
  name    = "TECH_TALK_STORAGE_INTEGRATION_2"
  comment = "Storage integration for tech talk s3 bucket which receives files from pythonanywhere website."
  type    = "EXTERNAL_STAGE"

  enabled = true

  storage_allowed_locations = ["*"]
  #   storage_blocked_locations = [""]
  #   storage_aws_object_acl    = "bucket-owner-full-control"

  storage_provider         = "S3"
  #storage_aws_external_id  = "..."
  #storage_aws_iam_user_arn = "..."
  storage_aws_role_arn     = data.terraform_remote_state.storage_integration_role.outputs.cross_account_trust_relationship_role_arn #"arn:aws:iam::190687746545:role/snowflake_storage_integration_role"

}