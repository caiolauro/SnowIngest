resource "snowflake_stage" "tech_talk_stage" {
  name        = "TECH_TALK_TEST_STAGE_2"
  url         = "s3://web-app-tech-talk-stage-2"
  database    = "SNOWFLAKE_TECH_TALK_TEST_2"
  schema      = "TEST"
  storage_integration = "TECH_TALK_STORAGE_INTEGRATION_2"
}

resource "snowflake_stage_grant" "grant_usage_tech_talk_stage" {
  database_name = snowflake_stage.tech_talk_stage.database
  schema_name   = snowflake_stage.tech_talk_stage.schema
  roles         = ["SYSADMIN"]
  privilege     = "USAGE"
  stage_name    = snowflake_stage.tech_talk_stage.name
}