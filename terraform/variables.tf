variable "environment" {
  type        = string
  description = "dev/staging/prod"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be dev, staging, or prod."
  }
}
variable "aws_region" {
  default = "eu-central-1"
}

variable "db_connection_string" {
  description = "Sensitive DB connection string"
  type        = string
  sensitive   = true
}