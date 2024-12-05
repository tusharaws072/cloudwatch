variable "cpu_threshold" {
  description = "Threshold for CPU utilization"
  type        = number
  default     = 80
}

variable "sns_topic_arn" {
  description = "The ARN of the SNS topic for CloudWatch alarms"
  type        = string
}


variable "free_storage_threshold" {
  description = "Threshold for free storage space in bytes"
  type        = number
  default     = 5368709120 # 5 GB
}

variable "connections_threshold" {
  description = "Threshold for database connections"
  type        = number
  default     = 100
}

variable "free_memory_threshold" {
  description = "Threshold for free memory in bytes"
  type        = number
  default     = 1073741824 # 1 GB
}

variable "read_latency_threshold" {
  description = "Threshold for read latency in seconds"
  type        = number
  default     = 1
}

variable "write_latency_threshold" {
  description = "Threshold for write latency in seconds"
  type        = number
  default     = 1
 }

variable "read_throughput_threshold" {
  description = "Threshold for read throughput in bytes/second"
  type        = number
  default     = 100000 # Adjust as needed
}

variable "write_throughput_threshold" {
  description = "Threshold for write throughput in bytes/second"
  type        = number
  default     = 100000 # Adjust as needed
}

variable "read_iops_threshold" {
  description = "Threshold for read IOPS"
  type        = number
  default     = 100
}

variable "write_iops_threshold" {
  description = "Threshold for write IOPS"
  type        = number
  default     = 100
}

variable "db_identifier" {
  
}
