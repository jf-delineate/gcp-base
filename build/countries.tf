module "countries" {
  source = "../modules/countries"
  domain = local.domain
}

module "bra" {
  source = "./modules/bra"

  domain = local.domain
  parent = module.countries.name
}

module "gbr" {
  source = "./modules/gbr"

  domain = local.domain
  parent = module.countries.name
}

module "hgk" {
  source = "./modules/hgk"

  domain = local.domain
  parent = module.countries.name
}
