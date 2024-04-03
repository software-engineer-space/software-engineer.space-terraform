resource "github_repository" "software-engineer-space" {
  name             = "${var.domain_prefix}.software-engineer.space"
  auto_init        = true

  pages {
    cname = "${var.domain_prefix}.software-engineer.space"
    source {
      branch = "main"
    }
  }
}

resource "github_repository_collaborator" "software-engineer-space" {
  count = var.github_handle != "" ? 1 : 0
  repository = github_repository.software-engineer-space.name
  username   = var.github_handle
}

resource "github_repository_file" "index" {
  repository     = github_repository.software-engineer-space.name
  branch         = "main"
  file           = "index.html"
  content        = "Hello software-engineer ${var.github_handle} 👋"
  commit_message = "Add index.html"
}
