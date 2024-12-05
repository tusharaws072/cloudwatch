#  #Create an IAM Role for RDS Monitoring
# resource "aws_iam_role" "rds_monitoring" {
#   name               = "${var.db_identifier}-monitoring-role"
#   assume_role_policy = data.aws_iam_policy_document.rds_monitoring_assume_policy.json
# }

# # IAM Policy for RDS Monitoring
# data "aws_iam_policy_document" "rds_monitoring_assume_policy" {
#   statement {
#     actions = ["sts:AssumeRole"]
#     principals {
#       type        = "Service"
#       identifiers = ["monitoring.rds.amazonaws.com"]
#     }
#   }
# }

# # Attach the RDS Monitoring Policy
# resource "aws_iam_role_policy_attachment" "rds_monitoring" {
#   role       = aws_iam_role.rds_monitoring.name
#   policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
# }

# # Add the RDS Monitoring Role to the RDS module
# module "rds" {
#   source     = "terraform-aws-modules/rds/aws"
#   identifier = var.db_identifier
#   version    = "~> 5.0"

#   engine               = var.engine
#   major_engine_version = var.major_engine_version
#   instance_class       = var.instance_class
#   allocated_storage    = var.allocated_storage
#   db_name              = var.db_name
#   username             = var.db_username
#   password             = var.db_password

#   backup_retention_period = 7
#   publicly_accessible     = false
#   skip_final_snapshot     = true
#   family                  = "postgres16"

#   monitoring_interval = 60 # Enable enhanced monitoring (interval in seconds)
#   monitoring_role_arn = aws_iam_role.rds_monitoring.arn

#   tags = {
#     Name = "my-postgres-db"
#   }
# }