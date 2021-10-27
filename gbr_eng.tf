module "gbr_eng" {
  source = "./modules/client"
  
  parent = module.gbr.name
  name   = "${module.gbr.iso}-eng"
}