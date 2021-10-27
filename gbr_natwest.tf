module "gbr_natwest" {
  source = "./modules/client"
  
  parent = module.gbr.name
  name   = "${module.gbr.iso}-natwest"
}