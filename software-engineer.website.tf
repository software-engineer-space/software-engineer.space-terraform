resource "cloudflare_record" "software-engineer-space" {
  for_each = toset(["185.199.108.153", "185.199.109.153", "185.199.110.153", "185.199.111.153"])
  name    = var.software-engineer-space-dns
  zone_id = cloudflare_zone.software-engineer-space.id
  value   = each.value
  type    = "A"
  proxied = true
}


resource "github_repository" "software-engineer-space" {
  name             = "software-engineer-space.github.io"
  license_template = "gpl-3.0"
  auto_init        = true

  lifecycle {
    ignore_changes = [pages]
  }
}

resource "github_repository_file" "index" {
  repository          = github_repository.software-engineer-space.name
  branch              = "main"
  file                = "index.html"
  content             = "Hello software-engineer 👋"
  commit_message      = "Add index.html"
  commit_author       = var.software-engineer-space-user.name
  commit_email        = var.software-engineer-space-user.email
}

resource "github_repository_file" "CNAME" {
  repository          = github_repository.software-engineer-space.name
  branch              = "main"
  file                = "CNAME"
  content             = var.software-engineer-space-dns
  commit_message      = "Add CNAME"
  commit_author       = var.software-engineer-space-user.name
  commit_email        = var.software-engineer-space-user.email
}
