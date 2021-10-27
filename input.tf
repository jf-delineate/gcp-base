variable "domain" {
  description = "organisation domain"
  type        = string
  default     = "delineate.io"
}

locals {
  domain = lower(var.domain)
}
