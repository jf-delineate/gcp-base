variable "domain" {
  description = "organisation domain"
  type        = string
}

data "google_organization" "this" {
  domain = var.domain
}