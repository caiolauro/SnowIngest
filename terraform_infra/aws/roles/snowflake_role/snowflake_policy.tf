# reference: https://docs.snowflake.com/en/user-guide/data-load-snowpipe-auto-s3.html#step-1-configure-access-permissions-for-the-s3-bucket

resource "aws_iam_policy" "snowflake_storage_integration_access_policy" {
  name        = "snowflake_storage_integration_access_policy"
  description = "Snowflake Access Policy for Storage Integration web-app-tech-talk-stage-2 S3 Bucket."

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "VisualEditor0",
        "Effect" : "Allow",
        "Action" : "s3:ListBucket",
        "Resource" : "arn:aws:s3:::web-app-tech-talk-stage-2",
        "Condition" : {
          "StringLike" : {
            "s3:prefix" : "*"
          }
        }
      },
      {
        "Sid" : "VisualEditor1",
        "Effect" : "Allow",
        "Action" : [
          "s3:GetObject",
          "s3:GetObjectVersion"
        ],
        "Resource" : "arn:aws:s3:::web-app-tech-talk-stage-2/*"
      },
      {
        "Sid" : "VisualEditor2",
        "Effect" : "Allow",
        "Action" : "s3:GetBucketLocation",
        "Resource" : "arn:aws:s3:::web-app-tech-talk-stage-2/*"
      }
    ]
  })
}