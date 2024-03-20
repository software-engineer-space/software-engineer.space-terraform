resource "cloudflare_record" "software-engineer-website" {
  name    = "software-engineer.website"
  zone_id = cloudflare_zone.software-engineer-website.id
  value   = "195.110.124.133"
  type    = "A"
  proxied = true
}
