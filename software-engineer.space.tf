resource "cloudflare_record" "software-engineer-space" {
  for_each = toset(["185.199.108.153", "185.199.109.153", "185.199.110.153", "185.199.111.153"])
  name     = var.software-engineer-space-dns
  zone_id  = cloudflare_zone.software-engineer-space.id
  value    = each.value
  type     = "A"
  proxied  = true
}

resource "github_repository" "software-engineer-space" {
  name             = "software-engineer.space"
  license_template = "gpl-3.0"
  auto_init        = true

  pages {
    cname = var.software-engineer-space-dns
    source {
      branch = "main"
    }
  }
}
