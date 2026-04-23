variable "environment" {
  type        = string
}

variable "secrets_arn" {
  type        = string
  description = "ARN of the secret to grant access to"
}