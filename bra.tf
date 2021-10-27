module "bra" {
  source = "./modules/country"

  domain   = local.domain
  parent   = module.countries.name
  iso      = lower("bra")
  language = lower("pt-br")
  admins   = []
  contacts = []
}
