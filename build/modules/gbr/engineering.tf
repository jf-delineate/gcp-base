module "engineering" {
  source = "../../../modules/client"

  parent     = module.gbr.name
  name       = "engineering"
  billing_id = module.gbr.billing_id
}
