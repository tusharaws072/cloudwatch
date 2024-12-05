variable "aws_region" {
  description = "The AWS region to deploy resources"
  default     = "ap-southeast-1"
}

variable "aws_access_key" {
  description = "AWS access key"
  sensitive   = true
  default     = ""

}



variable "aws_secret_key" {
  description = "AWS secret access key"
  sensitive   = true
  default     = ""

}



variable "db_identifier" {
  description = "The database identifier for naming resources"
  type        = string
  default     = "rds"
}

variable "sns_email" {
  description = "The email address for SNS notifications"
  type        = string
  default     = "example@Ggmail.com"
}
