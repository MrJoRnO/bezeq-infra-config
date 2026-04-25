
module "vpc" {
  source          = "./modules/vpc"
  vpc_name        = "${local.env_prefix}-vpc"
  vpc_cidr        = var.vpc_cidr
  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
}

module "eks" {
  source       = "./modules/eks"
  cluster_name = "${local.env_prefix}-cluster"
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.private_subnets
}

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
  source       = "./modules/iam"
  environment  = var.environment
  secrets_arn  = module.secrets.secret_arn
  cluster_name = module.eks.cluster_name 
}