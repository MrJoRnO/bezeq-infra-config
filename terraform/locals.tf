locals {
  project_name = "bezeq-app"
  
  env_prefix = "${local.project_name}-${var.environment}"

  common_tags = {
    Project     = local.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Team        = "DevOps"
  }

  is_prod = var.environment == "prod" ? true : false
}