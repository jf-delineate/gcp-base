variable "domain" {
  description = "organisation domain"
  type        = string
}

locals {
  domain = lower(var.domain)
}
