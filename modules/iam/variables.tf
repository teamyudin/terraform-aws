variable "policy_name" {
  description = "The name of the IAM policy."
  type        = string
}

variable "policy_description" {
  description = "The description of the IAM policy."
  type        = string
}

variable "policy" {
  description = "The policy document."
  type        = string
}

variable "user" {
  description = "The IAM user to attach the policy to."
  type        = string
}
