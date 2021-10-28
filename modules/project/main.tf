resource "google_folder" "this" {
  display_name = local.name
  parent       = var.parent
}

module "dev" {
  source = "../environment"

  domain     = var.domain
  parent     = google_folder.this.name
  name       = "${local.name}-dev"
  billing_id = var.billing_id
}

module "pre" {
  source = "../environment"

  domain     = var.domain
  parent     = google_folder.this.name
  name       = "${local.name}-pre"
  billing_id = var.billing_id
}

module "prod" {
  source = "../environment"

  domain     = var.domain
  parent     = google_folder.this.name
  name       = "${local.name}-prod"
  billing_id = var.billing_id
}
