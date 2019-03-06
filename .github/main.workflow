workflow "PR Checklist" {
  on = "pull_request"
  resolves = ["Create PR Comment"]
}

action "Create PR Comment" {
  uses = "./Dockerfile"
  secrets = ["GITHUB_TOKEN"]
}
