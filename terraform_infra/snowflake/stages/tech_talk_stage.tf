resource "snowflake_stage" "tech_talk_stage" {
  name        = "TECH_TALK_STAGE"
  url         = "s3://snowflake-tech-talk-stage"
  database    = "SHARED"
  schema      = "PUBLIC"
  storage_integration = "TECH_TALK_STORAGE_INTEGRATION"
}

# resource "snowflake_stage_grant" "grant_tech_talk_stage" {
#   database_name = snowflake_stage.tech_talk_stage.database
#   schema_name   = snowflake_stage.tech_talk_stage.schema
#   roles         = ["SYSADMIN"]
#   privilege     = "OWNERSHIP"
#   stage_name    = snowflake_stage.tech_talk_stage.name
# }