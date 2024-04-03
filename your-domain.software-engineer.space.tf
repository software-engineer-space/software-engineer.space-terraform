module "your-domain" {
  source             = "./modules/software-engineer-space"
  domain_prefix      = "your-domain"
  cloudflare_zone_id = cloudflare_zone.software-engineer-space.id

  providers = {
    cloudflare = cloudflare
    github = github
  }
}
