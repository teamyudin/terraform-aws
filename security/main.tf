terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_policy" "budgets_policy" {
  name        = "BudgetsPolicy"
  description = "Policy for modifying and viewing AWS Budgets"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "budgets:ModifyBudget",
          "budgets:ViewBudget"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "demo_budgets_attachment" {
  user       = "demo"
  policy_arn = aws_iam_policy.budgets_policy.arn
}