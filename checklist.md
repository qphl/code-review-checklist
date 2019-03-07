## Pull Request Review Checklist:

- [ ] Variable have been given sensible, meaningful names.
- [ ] LINQ to SQL datacontexts must always be initialised with an explicit connection string drawn from a config file.
- [ ] Code is DRY (Dont Repeat Yourself). (But make sure where this is applied, the two things are actually the same!)
- [ ] No values have been hard-coded where they should be drawn from a config file.
- [ ] Comments are present where appropriate, and provide useful information not just stating what the code is obviously doing.
- [ ] Error handling is performed appropriately where things might fail.
- [ ] Logging is present, useful, and uses log levels appropriately.
- [ ] If new app config values are referenced in the code, a placeholder must be committed in the config file.
- [ ] If new app config values are referenced in the code, they must be added to octopus before approving this PR.
- [ ] For projects with snapshotting, any new fields added to viewmodels must declare datamembers appropriately.
- [ ] For projects with snapshotting, any new viewmodels should be added to the snapshot load/save code in the bootstrapper.
