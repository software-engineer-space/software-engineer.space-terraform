module "tpreviero" {
  source             = "./modules/software-engineer-space"
  github_handle      = "tpreviero"
  domain_prefix      = "tpreviero"
  cloudflare_zone_id = cloudflare_zone.software-engineer-space.id

  providers = {
    cloudflare = cloudflare
    github = github
  }
}
