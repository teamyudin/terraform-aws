module "budgets_dev" {
  source = "../../modules/budgets"

  name              = "monthly-budget-dev"
  budget_type       = "COST"
  limit_amount      = "101.0"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2024-03-16_00:01"
}