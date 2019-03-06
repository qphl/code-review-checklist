workflow "PR Checklist" {
  on = "pull_request"
  resolves = ["Create PR Comment"]
}

action "Create PR Comment" {
  uses = "./add-checklist"
  secrets = ["GITHUB_TOKEN"]
}
