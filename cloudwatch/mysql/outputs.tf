#output "aws_region" {
 # description = "AWS region where resources are created"
 # value       = var.region
#}

# output "db_instance_id" {
#   description = "The DBInstanceIdentifier of the RDS instance"
#   value       = module.rds.db_instance_id
# }

output "db_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = module.rds.db_instance_endpoint
}

output "db_allocated_storage" {
  description = "RDS allocated storage in GB"
  value       = var.allocated_storage
}

output "rds_monitoring_role_arn" {
  description = "ARN of the RDS Monitoring IAM Role"
  value       = aws_iam_role.rds_monitoring.arn
}

output "db_engine" {
  description = "RDS database engine"
  value       = var.engine
}

output "db_engine_version" {
  description = "RDS database engine major version"
  value       = var.major_engine_version
}

output "db_instance_class" {
  description = "RDS instance class"
  value       = var.instance_class
}

output "db_identifier" {
  value = module.rds.db_instance_id
}


# output "db_instance_id" {
#   description = "The ID of the RDS DB instance"
#   value       = aws_db_instance.this.id
# }



# output "db_instance_id" {
#   description = "The ID of the RDS DB instance."
#   value       = module.rds.this_db_instance_id
# }



# output "db_instance_id" {
#   description = "The ID of the RDS DB instance."
#   value       = module.rds.db_instance_identifier
# }




# output "db_instance_identifier" {
#   description = "The DB instance identifier."
#   value       = aws_db_instance.example.id
# }



# output "db_instance_identifier" {
#   value = module.rds.db_instance_identifier  # Assuming rds module provides db_instance_identifier
# }


# output "db_instance_identifier" {
#   value = 
# }


output "db_instance_identifier" {
  value = module.rds.db_instance_id

}
