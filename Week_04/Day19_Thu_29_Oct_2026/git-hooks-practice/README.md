# Git Hooks Practice
This repo has two Git hooks:
pre-commit: stops a commit if a file has an unfinished-work note
pre-push: checks shell scripts with shellcheck before pushing

To turn the hooks on after cloning, run:
git config core.hooksPath .githooks
