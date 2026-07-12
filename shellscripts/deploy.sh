#!/bin/bash

# Exit if any subcommand fails
set -e

# Build directly into docs
bundle exec jekyll build --destination docs

# Add, commit, and push the changes
git add --all
git commit -m "Deploy site"
git push origin master
