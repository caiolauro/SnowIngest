resource "snowflake_database" "test_database" {
  name                        = var.WEB_APP_DATABASE_NAME
  comment                     = "Auto Ingestion Database"

}

resource "snowflake_schema" "test_schema" {
  database = var.WEB_APP_DATABASE_NAME
  name     = var.WEB_APP_DB_SCHEMA_NAME
}