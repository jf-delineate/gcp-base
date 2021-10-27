module "gbr_hsbc" {
  source = "./modules/client"
  
  parent = module.gbr.name
  name   = "${module.gbr.iso}-hsbc"
}

module "gpb_devops" {
  source = "./modules/project"

  parent = module.gbr_hsbc.name
  name   = "gpb-devops"
}