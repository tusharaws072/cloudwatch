




module "sns" {
  source        = "./sns"
  db_identifier = var.db_identifier
  sns_email     = var.sns_email
}




module "mysql" {
  source        = "./mysql"
  db_identifier = var.db_identifier
  sns_topic_arn = module.sns.sns_topic_arn
}

module "cloudwatch" {
  source        = "./cloudwatch"
  depends_on    =  [module.mysql]
  db_identifier = module.mysql.db_identifier
  sns_topic_arn = module.sns.sns_topic_arn

}


# module "postgress" {
#   source        = "./postgress"
#   db_identifier = var.db_identifier
#   sns_topic_arn = module.sns.sns_topic_arn
# }
