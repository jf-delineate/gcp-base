variable "domain" {
  description = "organisation domain"
  type        = string
}

variable "parent" {
  description = "parent for the country "
  type        = string
}

variable "iso" {
  description = "iso for the country"
  type        = string
}

variable "language" {
  description = "language for the contacts"
  type        = string
}

variable "admins" {
  description = "admins for the country"
  type        = list(string)
}

variable "contacts" {
  description = "contacts for the country"
  type        = list(string)
}

locals {
  iso = lower(var.iso)
  domain = lower(var.domain)
}

data "google_organization" "this" {
  domain = var.domain
}