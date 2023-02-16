resource "github_team" "some_team" {
  for_each = toset(var.team)
  name        = each.value
   description = "Some cool team"
  privacy     = "closed"
}