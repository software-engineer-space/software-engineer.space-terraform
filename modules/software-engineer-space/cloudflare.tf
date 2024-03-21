resource "cloudflare_record" "software-engineer-space" {
  for_each = toset(["185.199.108.153", "185.199.109.153", "185.199.110.153", "185.199.111.153"])
  name    = "${var.domain_prefix}.software-engineer.space"
  zone_id = var.cloudflare_zone_id
  value   = each.value
  type    = "A"
  proxied = true
}


