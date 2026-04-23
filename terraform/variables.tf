variable "environment" {
  description = "dev / staging / prod"
  type        = string
}

variable "aws_region" {
  default = "eu-central-1"
}

variable "db_connection_string" {
  description = "Sensitive DB connection string"
  type        = string
  sensitive   = true
}