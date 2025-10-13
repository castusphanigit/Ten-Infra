output "role_arn" {
  value = aws_iam_role.this.arn
}

output "policy_arns" {
  value = [for p in aws_iam_policy.this : p.arn]
}