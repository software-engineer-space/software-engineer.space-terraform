terraform {
  backend "remote" {
    organization = "software-engineer-space"
    workspaces {
      name = "software-engineer-space"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.CLOUDFLARE_API_TOKEN
}

provider "github" {
  token = var.GITHUB_TOKEN
  owner = "software-engineer-space"
}
