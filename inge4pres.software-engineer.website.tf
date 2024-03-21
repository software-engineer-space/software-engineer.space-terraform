module "inge4pres" {
  source             = "./modules/software-engineer-space"
  github_handle      = "inge4pres"
  domain_prefix      = "inge4pres"
  cloudflare_zone_id = cloudflare_zone.software-engineer-space.id

  providers = {
    cloudflare = cloudflare
    github = github
  }
}
