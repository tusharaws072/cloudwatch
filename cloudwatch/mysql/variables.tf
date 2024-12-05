variable "db_identifier" {
  description = "Identifier for the RDS database"
  type        = string
  default     = "rds-mysql"
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "mydb"
}

variable "db_username" {
  description = "Database username"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Database password"
  type        = string
  default     = "mypassword" # Replace with a secure value
}

variable "allocated_storage" {
  description = "Allocated storage in GB for the RDS database"
  type        = number
  default     = 20
}

variable "engine" {
  description = "Database engine type"
  type        = string
  default     = "mysql"
}

variable "major_engine_version" {
  description = "Major version of the database engine"
  type        = string
  default     = "8.0"
}

variable "instance_class" {
  description = "Instance class for the RDS database"
  type        = string
  default     = "db.t3.micro"
}




variable "cpu_threshold" {
  description = "Threshold for CPU utilization"
  type        = number
  default     = 80
}


variable "sns_topic_arn" {
  description = "The ARN of the SNS topic for CloudWatch alarms"
  type        = string
}
