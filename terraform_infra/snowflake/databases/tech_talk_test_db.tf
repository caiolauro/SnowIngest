resource "snowflake_database" "test_database" {
  name                        = "SNOWFLAKE_TECH_TALK_TEST_2"
  comment                     = "Database created to test auto ingestion for tech talk presentation"

}

resource "snowflake_schema" "test_schema" {
  database = "SNOWFLAKE_TECH_TALK_TEST_2"
  name     = "TEST"
}