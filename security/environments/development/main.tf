module "iam_budgets_dev" {
  source = "../../modules/iam"

  policy_name        = "BudgetsPolicy"
  policy_description = "Policy for modifying and viewing AWS Budgets in Development"
  policy             = file("${path.module}/budget_policy.json")
  user               = "demo"
}
