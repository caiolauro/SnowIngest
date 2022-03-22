resource "aws_s3_bucket" "snowflake_tech_talk_infra" {
  bucket = "snowflake-tech-talk-infra"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}