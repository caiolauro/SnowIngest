variable "region" {
  type    = string
  default = "sa-east-1"
}

variable "storage_integration_s3_paths" {
  type    = list(string)
  default = ["data/"]
}

variable "assumer_principals_arn_list" {
  type    = list(string)
  default = ["arn:aws:iam::190687746545:user/clauro", "arn:aws:iam::039577674187:user/fikx-s-ohsv6205"]
}

variable "storage_integration_s3_bucket_arn" {
  type    = string
  default = "arn:aws:s3:::snowflake-tech-talk-stage"
}
