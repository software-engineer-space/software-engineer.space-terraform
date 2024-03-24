module "this-agio" {
  source             = "./modules/software-engineer-space"
  github_handle      = "this-agio"
  domain_prefix      = "this-agio"
  cloudflare_zone_id = cloudflare_zone.software-engineer-space.id

  providers = {
    cloudflare = cloudflare
    github = github
  }
}
