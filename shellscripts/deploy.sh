#!/bin/bash

# Exit if any subcommand fails
set -e

# Add, commit, and push changes (GitHub Actions builds and deploys the site)
git add --all
git commit -m "Deploy site"
git push origin master
