output "policy_arn" {
  description = "The ARN of the IAM policy."
  value       = aws_iam_policy.budgets_policy.arn
}

output "user_policy_attachment" {
  description = "The ID of the IAM user policy attachment."
  value       = aws_iam_user_policy_attachment.demo_budgets_attachment.id
}