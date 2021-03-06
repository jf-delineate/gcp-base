variable "parent" {
  description = "Parent for the client"
  type        = string
}

variable "name" {
  description = "Name of the client"
  type        = string
}

variable "billing_id" {
  description = "billing account id for the project"
  type        = string
}

locals {
  name = lower(var.name)
  dev  = "${local.name}-dev"
  pre  = "${local.name}-pre"
  prod = "${local.name}-prod"
}
