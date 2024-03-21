resource "cloudflare_account" "software-engineer-space" {
  name = "software-engineer.space"
}

resource "cloudflare_zone" "software-engineer-space" {
  account_id = cloudflare_account.software-engineer-space.id
  zone       = "software-engineer.space"
}
