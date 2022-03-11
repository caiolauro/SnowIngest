resource "snowflake_database" "test_database" {
  name                        = "SNOWFLAKE_TECH_TALK_TEST"
  comment                     = "Database created to test auto ingestion for tech talk presentation"

}
