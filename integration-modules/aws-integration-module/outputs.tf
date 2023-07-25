output "integration_role_arn" {
  description = "Created ARN to be used in appNovi Integration"
  value = aws_iam_role.app_novi_aws_integration_role.arn
}