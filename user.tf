resource "github_team_membership" "members" {
  for_each = { for tm in local.team_members : tm.slug => tm if tm.role != ""  }

  team_id  = each.value.team
  username = each.value.name
  role     = each.value.role
}
