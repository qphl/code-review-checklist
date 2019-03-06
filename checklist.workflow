workflow "New workflow" {
  on = "pull_request"
  resolves = ["Create PR Comment"]
}

action "Create PR Comment" {
  uses = "dockerfile"
  secrets = ["GITHUB_TOKEN"]
}
