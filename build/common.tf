module "common" {
  source = "../modules/common"
  domain = local.domain
}

# import the bootstrap project
