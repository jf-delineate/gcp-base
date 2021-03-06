variable "domain" {
  description = "Domain name"
  type        = string
}

variable "policy_for" {
  description = "level to apply policy"
  type        = string
  default     = "organization"
}

variable "parent" {
  description = "parent to associate the policies"
  type        = string
  default     = null
}

variable "enable_policies" {
  description = "Policies to enforce"
  type        = list(string)
}

variable "disable_policies" {
  description = "Policies to disable"
  type        = list(string)
}

variable "deny_all_policies" {
  description = "Policies to deny all"
  type        = list(string)
}

variable "allow_customer_policies" {
  description = "Policies to enforce"
  type        = list(string)
}

variable "allow_domain_policies" {
  description = "Policies to enforce"
  type        = list(string)
}
