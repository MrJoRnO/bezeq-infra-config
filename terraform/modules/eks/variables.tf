variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID where the cluster will be deployed"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs for the EKS nodes"
}