resource "aws_iam_policy" "openshift_aws_access" {
  name        = "OpenShiftAccess-${var.environment}"
  description = "Policy for OpenShift to access AWS Secrets"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
        Effect   = "Allow"
        Resource = var.secrets_arn
      }
    ]
  })
}