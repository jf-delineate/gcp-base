module "hsbc" {
  source = "../../../modules/client"

  parent     = module.gbr.name
  name       = "hsbc"
  billing_id = module.gbr.billing_id
}

module "gpb_devops" {
  source = "../../../modules/project"

  domain     = var.domain
  parent     = module.hsbc.name
  name       = "gpb-devops"
  billing_id = module.gbr.billing_id
}
