output "ecr_url" {
  value = module.ecr.repository_url
}

output "db_secret_arn" {
  value = module.secrets.secret_arn
}

output "iam_policy_arn" {
  value = module.iam.policy_arn
}