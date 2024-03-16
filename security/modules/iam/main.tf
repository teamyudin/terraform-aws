resource "aws_iam_policy" "budgets_policy" {
  name        = var.policy_name
  description = var.policy_description
  policy      = var.policy
}

resource "aws_iam_user_policy_attachment" "demo_budgets_attachment" {
  user       = var.user
  policy_arn = aws_iam_policy.budgets_policy.arn
}
