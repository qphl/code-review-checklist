# Code Review Checklist

This repository contains a checklist of common issues to be used when conducting code reviews as well as a Github Action which automatically posts the checklist when a new pull request is created.

# The Checklist

The checklist can be found in [checklist.md](./checklist.md). If you would like to suggest changes, please submit a pull request to this repository.

# Github Action

To set up the github action in a new repository, create a folder named `.github` in the repository root, and inside create a file named `main.workflow`. (If the repository already has actions set up then skip this step, the file will already exist.

Add the following to the workflow file.

```
workflow "PR Checklist" {
  on = "pull_request"
  resolves = ["Create PR Comment"]
}
```

This creates a new workflow named `PR Checklist` which will be triggered every time a pull request is created (`on = "pull_request"`). When triggered, it will run an action named `Create PR Comment`. Define that action by adding the following:

```
action "Create PR Comment" {
  uses = "cognisant/code-review-checklist@master"
  secrets = ["GITHUB_TOKEN"]
}
```

This creates an action named `Create PR Comment`, and the `uses` statement instructs github actions to find and run the [Dockerfile](./Dockerfile) in this repository. If you would like to pin the action to a specific commit, you can replace `@master` with a commit hash or tag. The line `secrets = ["GITHUB_TOKEN"]` supplies a token into the dockerfile which will allow the scripts inside the container to access the GitHub API.

Finally save the workflow, and whenever a Pull Request is created in the repository a comment will be automatically posted containing the contents of [checklist.md](./checklist.md).

![screenshot 2019-03-06 at 15 38 39](https://user-images.githubusercontent.com/548432/53967984-234aa780-40ee-11e9-9474-6c67ac39a70b.png)

NOTE: The workflow will only execute for pull requests on branches which contain `.github/main.workflow`, so any existing branches will need to be updated if you have made these changes on master.
