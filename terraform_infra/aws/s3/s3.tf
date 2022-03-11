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
# }
#   lifecycle_rule {
#     id      = "all"
#     enabled = true

#     transition {
#       days          = 30
#       storage_class = "ONEZONE_IA"
#     }

# #     expiration {
# #       days = 90
# #     }
# #   }

# #   versioning {
# #     enabled = true
# #   }

# #   tags = merge(
# #     {
# #       Environment = var.aws_environment_tag
# #       Terraform   = true
# #     },
# #     var.extra_tags
# #   )
# }
