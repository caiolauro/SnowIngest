# output "snowflake_role_arn" {
#   description = "Snowflake Role ARN"
#   value       = aws_iam_role.cross_account_trust_relationship_role.arn
# }

output "cross_account_trust_relationship_role_arn" {
  description = "Cross Account Trust Relationship Role for AWS & Snowflake"
  value       = aws_iam_role.cross_account_trust_relationship_role.arn
}