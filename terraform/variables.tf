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

# VPC Variables
variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones for the region"
}

variable "private_subnets" {
  type        = list(string)
  description = "CIDR blocks for private subnets"
}

variable "public_subnets" {
  type        = list(string)
  description = "CIDR blocks for public subnets"
}

# EKS Variables
variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}