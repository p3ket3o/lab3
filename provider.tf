terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# provider "github" {
#   token = "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"
#   owner = "p3ket4o"
# }

provider "github" {
  token = var.token
  owner = var.owner
}