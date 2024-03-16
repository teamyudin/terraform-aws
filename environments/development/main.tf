module "budgets_dev" {
  source = "../../modules/budgets"

  name              = "monthly-budget-dev"
  budget_type       = "COST"
  limit_amount      = "101.0"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2024-03-16_00:01"
}

module "iam_budgets_dev" {
  source = "../../modules/iam"

  policy_name        = "BudgetsPolicy"
  policy_description = "Policy for modifying and viewing AWS Budgets in Development"
  policy             = file("${path.module}/budget_policy.json")
  user               = "demo"
}
