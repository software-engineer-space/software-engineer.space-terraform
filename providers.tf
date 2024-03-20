terraform {
  backend "remote" {
    organization = "software-engineer-website"
    workspaces {
      name = "software-engineer-website"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
