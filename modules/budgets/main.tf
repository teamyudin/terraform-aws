resource "aws_budgets_budget" "dev-budget" {
  name              = var.name
  budget_type       = var.budget_type
  limit_amount      = var.limit_amount
  limit_unit        = var.limit_unit
  time_unit         = var.time_unit
  time_period_start = var.time_period_start
}