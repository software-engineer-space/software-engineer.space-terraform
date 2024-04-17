locals {
  spaces = [
    {
      github_handle = "this-agio"
      dns_prefix    = "this-agio"
      }, {
      github_handle = "inge4pres"
      dns_prefix    = "inge4pres"
    },
  ]

  reserved_spaces = toset([
    "your-domain",
    "tommaso",
  ])
}

module "space" {
  for_each           = { for idx, space in local.spaces : space.dns_prefix => space.github_handle }
  source             = "./modules/software-engineer-space"
  github_handle      = each.value
  domain_prefix      = each.key
  cloudflare_zone_id = cloudflare_zone.software-engineer-space.id

  providers = {
    cloudflare = cloudflare
    github     = github
  }
}

module "reserved_space" {
  for_each           = local.reserved_spaces
  source             = "./modules/software-engineer-space"
  domain_prefix      = each.value
  cloudflare_zone_id = cloudflare_zone.software-engineer-space.id

  providers = {
    cloudflare = cloudflare
    github     = github
  }
}

