module "hgk" {
  source = "../../../modules/country"

  domain   = var.domain
  parent   = var.parent
  iso      = lower("hgk")
  language = lower("zh-hk")
  admins   = []
  contacts = []
}
