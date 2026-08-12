# Using GitHub to Collaborate

Git tracks changes to your project so you always have a history and can revert to an earlier version. GitHub hosts that history online and adds the tools for a team to work on the same project without stepping on each other: branches, pull requests, issues, and code review.

**Source:** [musslick/contributor-onboarding](https://github.com/musslick/contributor-onboarding): a hands-on course simulating a real open-source team workflow. This page summarizes it; work through the repo itself for the full exercise.

## Core terms

- **Repository**: your project folder, plus its full revision history.
- **Clone**: pull a repository from GitHub down to your machine so you can edit it locally and sync changes back.
- **Branch**: an isolated copy of the repo for developing a feature or fix without touching `main` until it's ready.
- **Fork**: a copy of *someone else's* repository under your own account, for contributing to a project you don't have write access to.
- **Commit**: a checkpoint of your changes, with a message describing what you did.
- **Push / pull**: send your local commits to GitHub / bring down commits others have pushed.
- **Issue**: a tracked task, bug, or enhancement request.
- **Pull request (PR)**: a request to merge one branch into another, with room for discussion and review before it lands.

## The collaboration workflow

This is the loop a team repeats for every change, and it's what keeps `main` always in a working state:

1. **Open an issue** describing the task or bug.
2. **Create a branch** for that issue (from the issue page: "Development" → "Create a branch", or `git checkout -b fix/short-name`).
3. **Make the change** and commit it with a message that says what and why.
4. **Push the branch** and **open a pull request** into `main`, linking the issue it resolves.
5. **Request review** from at least one teammate. They read the diff, comment, and either approve or request changes.
6. **Merge** once approved. This is also when automated tests (if configured) must pass.

Protecting `main` (Settings → Branches → require PR review before merging) makes step 5 mandatory instead of optional, which is standard practice on any real team project.

## Getting started

- [Create a GitHub account](https://github.com/join) if you don't have one.
- Install [Git](https://git-scm.com/downloads), or use [GitHub Desktop](https://desktop.github.com/download/) if you'd rather not touch the command line.
- Clone a repo: `git clone <url>`, or "Open in GitHub Codespaces" from the repo's green "Code" button to skip local setup entirely.

## Further reading

- [GitHub's own basics guide](https://docs.github.com/en/get-started): cloning, branches, forks, PRs, issues, markdown.
- [musslick/contributor-onboarding](https://github.com/musslick/contributor-onboarding): walks a small team through issues → branches → PRs → code review → automated tests on a real (tiny) codebase.

[← Back to home](index.md)
