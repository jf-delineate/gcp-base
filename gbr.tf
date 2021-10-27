module "gbr" {
  source = "./modules/country"

  domain   = local.domain
  parent   = module.countries.name
  iso      = lower("gbr")
  language = lower("en-gb")
  admins   = ["jonathan.fenwick","sam.larsen"]
  contacts = ["luka.furlan"]
}
