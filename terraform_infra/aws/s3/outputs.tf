output "snowflake_tech_talk_infra_s3_bucket_arn" {
  description = "snowflake_tech_talk_infra S3 Bucket ARN"
  value       = aws_s3_bucket.snowflake_tech_talk_infra.arn
}

output "snowflake_tech_talk_infra_s3_bucket_arn_id" {
  description = "snowflake_tech_talk_infra S3 Bucket ID"
  value       = aws_s3_bucket.snowflake_tech_talk_infra.id
}
