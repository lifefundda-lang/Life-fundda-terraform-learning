
resource "github_repository" "first-auto-repo" {
  name        = "First-repository-automatic-terraform-use"
  description = "This is the first repository created automatically using Terraform"
  visibility  = "public"
  auto_init   = true
}

resource "github_repository" "second-auto-repo" {
  name        = "Second-repository-automatic-terraform-use"
  description = "This is the second repository created automatically using Terraform"
  visibility  = "public"
  auto_init   = true
}

