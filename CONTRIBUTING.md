# Contributing

Contributions are welcome. All contributed code will be covered by the Apache License v2 of this project.

## Linting

eth-docker CI uses [pre-commit](https://pre-commit.com/) to lint all code within the repo. Add it to your local
copy with `apt install pre-commit` and `pre-commit install`.

This repo uses a squash-and-merge workflow to avoid extra merge commits. Create a branch for your feature or fix,
and work on this branch, then offer a PR from there.

If you end up working on `main`, you can create an `upstream` remote with
`git remote add upstream https://github.com/ethstaker/eth-docker.git`, and create a git alias with
`git config --global alias.push-clean '!git fetch upstream main && git rebase upstream/main && git push -f'`. You can
then `git push-clean` to your fork before opening a PR.
