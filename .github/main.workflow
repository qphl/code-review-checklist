workflow "PR Checklist" {
  on = "pull_request"
  resolves = ["Create PR Comment"]
}

action "Create PR Comment" {
  uses = "."
  secrets = ["GITHUB_TOKEN"]
}
