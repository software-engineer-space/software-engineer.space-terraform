
variable "CLOUDFLARE_API_TOKEN" {
  type        = string
  description = "Cloudflare API token to use"
}

variable "GITHUB_TOKEN" {
  type        = string
  description = "GitHub token to use"
}

variable "software-engineer-space-user" {
  type = map(string)
  default = {
    name  = "Software Engineer"
    email = "info@software-engineer.space"
  }
}

variable "software-engineer-space-dns" {
  type    = string
  default = "software-engineer.space"
}