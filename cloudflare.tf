resource "cloudflare_account" "software-engineer-website" {
  name = "software-engineer.website"
}

resource "cloudflare_zone" "software-engineer-website" {
  account_id = cloudflare_account.software-engineer-website.id
  zone       = "software-engineer.website"
}
