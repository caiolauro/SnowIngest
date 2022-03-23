resource "snowflake_database" "test_database" {
  name                        = var.SNOWFLAKE_TECH_TALK_DATABASE_NAME
  comment                     = "Database created to test auto ingestion for tech talk presentation"

}

resource "snowflake_schema" "test_schema" {
  database = var.SNOWFLAKE_TECH_TALK_DATABASE_NAME
  name     = var.SNOWFLAKE_TECH_TALK_SCHEMA_NAME
}