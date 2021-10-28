module "bra" {
  source = "../../../modules/country"

  domain   = var.domain
  parent   = var.parent
  iso      = lower("bra")
  language = lower("pt-br")
  admins   = []
  contacts = []
}
