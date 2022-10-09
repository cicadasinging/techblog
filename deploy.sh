#!/usr/bin/env sh

# Exit immediately if a simple command exits with a non-zero status.
set -e

# Build the package.
yarn docs:build

# Operations on directories and files.
mkdir -p docs/.vuepress/.deploy
cd docs/.vuepress/.deploy
rm -rf docs
mkdir docs
mv -f ../dist/* docs

# Operations on git.
git init
git add -A
git commit -m 'deploy'
git branch -M main
git push -f git@github.com:cicadasinging/cicadasinging.github.io.git main
