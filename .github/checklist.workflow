workflow "New workflow" {
  on = "pull_request"
  resolves = ["Create PR Comment"]
}

action "Create PR Comment" {
  uses = "alpine:latest"
  secrets = ["GITHUB_TOKEN"]
}
