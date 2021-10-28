module "natwest" {
  source = "../../../modules/client"

  parent     = module.gbr.name
  name       = "natwest"
  billing_id = module.gbr.billing_id
}
