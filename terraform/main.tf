module "ecr" {
  source          = "./modules/ecr"
  repository_name = "${local.env_prefix}-api"
  tags            = local.common_tags
}

module "secrets" {
  source      = "./modules/secrets_manager"
  secret_name = "${local.env_prefix}/db-connection"
  db_details  = var.db_connection_string
  tags        = local.common_tags
}

module "iam" {
  source      = "./modules/iam"
  environment = var.environment
  secrets_arn = module.secrets.secret_arn
}