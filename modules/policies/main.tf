data "google_organization" "this" {
  domain = var.domain
}

# enable org policies
module "enable_policies" {
  for_each        = toset(var.enable_policies)
  source          = "terraform-google-modules/org-policy/google"
  version         = "5.0.0"
  constraint      = each.key
  policy_for      = var.policy_for
  organization_id = data.google_organization.this.org_id
  folder_id       = var.parent
  policy_type     = "boolean"
  enforce         = true
}

# disable org policies
module "disable_policies" {
  for_each        = toset(var.disable_policies)
  source          = "terraform-google-modules/org-policy/google"
  version         = "5.0.0"
  constraint      = each.key
  policy_for      = var.policy_for
  organization_id = data.google_organization.this.org_id
  folder_id       = var.parent
  policy_type     = "boolean"
  enforce         = false
}

# deny policies
module "deny_all_policies" {
  for_each        = toset(var.deny_all_policies)
  source          = "terraform-google-modules/org-policy/google"
  version         = "5.0.0"
  constraint      = each.key
  policy_for      = var.policy_for
  organization_id = data.google_organization.this.org_id
  folder_id       = var.parent
  policy_type     = "list"
  allow           = null
}

module "allow_customer_policies" {
  for_each          = toset(var.allow_customer_policies)
  source            = "terraform-google-modules/org-policy/google"
  version           = "5.0.0"
  constraint        = each.key
  policy_for        = var.policy_for
  organization_id   = data.google_organization.this.org_id
  folder_id         = var.parent
  policy_type       = "list"
  allow             = [data.google_organization.this.directory_customer_id]
  allow_list_length = "1"
}

module "allow_domain_policies" {
  for_each          = toset(var.allow_domain_policies)
  source            = "terraform-google-modules/org-policy/google"
  version           = "5.0.0"
  constraint        = each.key
  policy_for        = var.policy_for
  organization_id   = data.google_organization.this.org_id
  folder_id         = var.parent
  policy_type       = "list"
  allow             = ["@${var.domain}"]
  allow_list_length = "1"
}
