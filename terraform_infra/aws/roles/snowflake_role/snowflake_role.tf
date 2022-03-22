# data "aws_iam_policy_document" "cross_account_assume_role_policy" {
#   statement {
#     effect = "Allow"

#     principals {
#       type        = "AWS"
#       identifiers = var.assumer_principals_arn_list
#     }

#     actions = ["sts:AssumeRole"]

#     condition {
#       test     = "StringLike"
#       variable = "sts:externalid"
#       values   = ["WH75704_SFCRole=3_BCIRIAH9dyB9IdkTm+hpBmqqocc="] #
#     }
#   }
# }
resource "aws_iam_role" "cross_account_trust_relationship_role" {
  name = "snowflake_storage_integration_role"
  path = "/"

  assume_role_policy = data.aws_iam_policy_document.cross_account_assume_role_policy.json
}

# # Exclusive attachment of roles
# resource "aws_iam_policy_attachment" "snowflake_policy_attachment" {

#   name       = aws_iam_policy.snowflake_storage_integration_access_policy.name
#   roles      = [aws_iam_role.cross_account_trust_relationship_role.name]
#   policy_arn = aws_iam_policy.snowflake_storage_integration_access_policy.arn
# }
