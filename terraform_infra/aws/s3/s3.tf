resource "aws_s3_bucket" "snowflake_tech_talk_infra" {
  bucket = "snowflake-tech-talk-infra-2"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}


resource "aws_s3_bucket" "web-app-tech-talk-stage-2" {
  bucket = "web-app-tech-talk-stage-2"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}