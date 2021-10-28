variable "domain" {
  description = "Domain name"
  type        = string
}

variable "parent" {
  description = "parent for the project "
  type        = string
}

variable "name" {
  description = "project name"
  type        = string
}

variable "billing_id" {
  description = "billing account id for the project"
  type        = string
}

locals {
  name = lower(var.name)
}
