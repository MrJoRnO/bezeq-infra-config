output "policy_arn" {
  value       = aws_iam_policy.openshift_aws_access.arn
  description = "The ARN of the created IAM policy"
}