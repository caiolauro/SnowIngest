variable "region" {
  type    = string
  default = "sa-east-1"
}

variable "SNOWFLAKE_TRIAL_USER" {
  description = "Snowflake Free Trial User"
  type        = string
}

variable "SNOWFLAKE_TRIAL_ACCOUNT" {
  description = "Snowflake Free Trial Account"
  type        = string
}

variable "SNOWFLAKE_TRIAL_REGION" {
  description = "Snowflake Free Trial Account Region"
  type        = string
}

variable "SNOWFLAKE_PASSWORD" {
  description = "Snowflake User in Free Trial Account"
  type        = string
}

variable "SNOWFLAKE_TECH_TALK_DATABASE_NAME" {
  type        = string
  default     = "SNOWFLAKE_TECH_TALK_TEST_2"
}

variable "SNOWFLAKE_TECH_TALK_SCHEMA_NAME" {
  type        = string
  default     = "WEB_APP"
}