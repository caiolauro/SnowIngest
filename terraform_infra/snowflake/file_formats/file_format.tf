resource "snowflake_file_format" "tech_talk_csv_gzip_file_format" {
  name                         = "GZIP_FILE_FORMAT"
  database                     = var.SNOWFLAKE_TECH_TALK_DATABASE_NAME
  schema                       = var.SNOWFLAKE_TECH_TALK_SCHEMA_NAME
  format_type                  = "CSV"
  escape                       = "NONE"
  escape_unenclosed_field      = "\\134"
  field_delimiter              = ","
  field_optionally_enclosed_by = "\\042"
  binary_format                = "UTF-8"
  record_delimiter             = "\n"
  compression                  = "GZIP"
  empty_field_as_null          = true
  null_if                      = ["", "NULL", "null"]
  timestamp_format             = "YYYY-MM-DD HH24:MI:SS.FF"
  # Matches what Oracle exports
  date_format = "AUTO"
  # To revisit this in cases where cloumn number doesn't match 
  error_on_column_count_mismatch = true
  skip_header                    = 0
  encoding                       = "UTF-8"
  trim_space                     = false
}