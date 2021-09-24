## Before Reviewing Any Code:

- [ ] Make sure the Jira card is properly linked to the PR.
- [ ] Read and understand the Jira card, requirements, and card conversation. If something is not clear, reach out to whoever you need to to get clarity (i.e. an SME, the reporter of the card, a PM, etc)
- [ ] Read and understand the PR original post and existing conversation on the PR.
- [ ] If there is no media attached to support that the new code works in the application, ask the author if they tested it in the application and to please attach proof of functionality when applicable.
- [ ] Make sure their CI build has passed.

## Reviewing The Code:

- [ ] Make sure there are thorough specs/tests
- [ ] Carefully review the code to make sure it meets all of the product requirements on the Jira card including any checklist items.
- [ ] Common suggestions may include improvements in performance, DRYing up code, architecture improvements, use of best practices, etc.
- [ ] If you have some ideas about an improvement that can be made, but it's something that can be addressed later, feel free to comment anyway, e.g. "not blocking merge, but module A could probably be merged with module B, do you think we should make a card to follow up?"
- [ ] Consider utilizing tooling to evaluate the code. For example, you could run code locally and use it as the end user would, or test on staging. Double check requests in feature’s description.
- [ ] Make sure all files are properly named (this is particularly important when functionality relies on file names, such as specs or mailers) and there are no typos throughout the code.
- [ ] Once you are done reviewing, whether approved or not, Slack the author to let them know you are done reviewing. A simple "done" or "lgtm" (looks good to me) is fine.
