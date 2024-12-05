# CloudWatch Alarms
resource "aws_cloudwatch_metric_alarm" "cpu_utilization" {
  alarm_name          = "${var.db_identifier}-High-CPU"

  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/RDS"
  period              = 300
  statistic           = "Average"
  threshold           = var.cpu_threshold

  dimensions = {
    DBInstanceIdentifier = var.db_identifier
  }

  alarm_actions = [var.sns_topic_arn]
}



# FreeStorageSpace

resource "aws_cloudwatch_metric_alarm" "free_storage_space" {
  alarm_name          = "${var.db_identifier}-Low-Free-Storage"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = 2
  metric_name         = "FreeStorageSpace"                        
  namespace           = "AWS/RDS"
  period              = 300
  statistic           = "Average"
  threshold           = var.free_storage_threshold

  dimensions = {
    DBInstanceIdentifier = var.db_identifier            
  }

  alarm_actions = [var.sns_topic_arn]
}

# DatabaseConnections

resource "aws_cloudwatch_metric_alarm" "database_connections" {
  alarm_name          = "${var.db_identifier}-High-Connections"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "DatabaseConnections"
  namespace           = "AWS/RDS"
  period              = 300
  statistic           = "Average"
  threshold           = var.connections_threshold

  dimensions = {
    DBInstanceIdentifier = var.db_identifier
  }

  alarm_actions = [var.sns_topic_arn]
}



#ReadLatency

resource "aws_cloudwatch_metric_alarm" "read_latency" {
  alarm_name          = "${var.db_identifier}-High-Read-Latency"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "ReadLatency"
  namespace           = "AWS/RDS"
  period              = 300
  statistic           = "Average"
  threshold           = var.read_latency_threshold

  dimensions = {
    DBInstanceIdentifier = var.db_identifier
  }

  alarm_actions = [var.sns_topic_arn]
}

#WriteLatency

resource "aws_cloudwatch_metric_alarm" "write_latency" {
  alarm_name          = "${var.db_identifier}-High-Write-Latency"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "WriteLatency"
  namespace           = "AWS/RDS"
  period              = 300
  statistic           = "Average"
  threshold           = var.write_latency_threshold

  dimensions = {
    DBInstanceIdentifier = var.db_identifier
  }

  alarm_actions = [var.sns_topic_arn]
}

#ReadThroughput

resource "aws_cloudwatch_metric_alarm" "read_throughput" {
  alarm_name          = "${var.db_identifier}-Low-Read-Throughput"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = 2
  metric_name         = "ReadThroughput"
  namespace           = "AWS/RDS"
  period              = 300
  statistic           = "Average"
  threshold           = var.read_throughput_threshold

  dimensions = {
    DBInstanceIdentifier = var.db_identifier
  }

  alarm_actions = [var.sns_topic_arn]
}

#WriteThroughput

resource "aws_cloudwatch_metric_alarm" "write_throughput" {
  alarm_name          = "${var.db_identifier}-Low-Write-Throughput"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = 2
  metric_name         = "WriteThroughput"
  namespace           = "AWS/RDS"
  period              = 300
  statistic           = "Average"
  threshold           = var.write_throughput_threshold

  dimensions = {
    DBInstanceIdentifier = var.db_identifier
  }

  alarm_actions = [var.sns_topic_arn]
}

#ReadIOPS

resource "aws_cloudwatch_metric_alarm" "read_iops" {
  alarm_name          = "${var.db_identifier}-Low-Read-IOPS"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = 2
  metric_name         = "ReadIOPS"
  namespace           = "AWS/RDS"
  period              = 300
  statistic           = "Average"
  threshold           = var.read_iops_threshold

  dimensions = {
    DBInstanceIdentifier = var.db_identifier
  }

  alarm_actions = [var.sns_topic_arn]
}

#WriteIOPS

resource "aws_cloudwatch_metric_alarm" "write_iops" {
  alarm_name          = "${var.db_identifier}-Low-Write-IOPS"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = 2
  metric_name         = "WriteIOPS"
  namespace           = "AWS/RDS"
  period              = 300
  statistic           = "Average"
  threshold           = var.write_iops_threshold

  dimensions = {
    DBInstanceIdentifier = var.db_identifier
  }

  alarm_actions = [var.sns_topic_arn]
}