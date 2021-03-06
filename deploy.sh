#!/bin/bash
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
cd public
touch ~/.git-credentials
chmod 0600 ~/.git-credentials
echo $GITHUB_TOKEN > ~/.git-credentials
git config credential.helper store
git config user.email "ilyesAj-bot@users.noreply.github.com"
git config user.name "ilyesAj-bot"
ls 
git remote show origin
git add .
git commit -m "Rebuild site"
git push --force origin HEAD:master
