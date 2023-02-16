
locals {
  team_members = flatten([
    for k,v in github_team.some_team: [
      for member in var.user : {
            slug = "${k}-${member.name}"
            name = member.name
            role = member.team[index(var.team, k)]
            team = github_team.some_team[k].id
      }
    ]
  ])
}