module "hgk" {
  source = "./modules/country"

  domain   = local.domain
  parent   = module.countries.name
  iso      = lower("hgk")
  language = lower("zh-hk")
  admins   = []
  contacts = []
}
