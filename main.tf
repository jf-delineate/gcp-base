module "common" {
  source = "./modules/common"
  domain = local.domain
}

module "countries" {
  source = "./modules/countries"
  domain = local.domain
}

module "sandpit" {
  source = "./modules/sandpit"
  domain = local.domain
}

# API to be enabled
# cloudresourcemanager.googleapis.com