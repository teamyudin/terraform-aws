variable "name" {
  description = "Name of the budget"
  type        = string
}

variable "budget_type" {
  description = "Type of the budget"
  type        = string
}

variable "limit_amount" {
  description = "Amount of the budget limit"
  type        = string
}

variable "limit_unit" {
  description = "Unit for the budget limit"
  type        = string
}

variable "time_unit" {
  description = "Time unit for the budget"
  type        = string
}

variable "time_period_start" {
  description = "Start time of the budget period"
  type        = string
}
