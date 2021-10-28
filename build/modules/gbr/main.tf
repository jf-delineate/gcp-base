module "gbr" {
  source = "../../../modules/country"

  domain   = var.domain
  parent   = var.parent
  iso      = lower("gbr")
  language = lower("en-gb")
  admins   = ["jonathan.fenwick"]
  contacts = ["jonathan.fenwick"]
}
