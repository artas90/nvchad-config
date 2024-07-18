#!/bin/sh
set -euo pipefail

CustomConfig=`git log --oneline | grep '==CustomConfig==' | awk '{print $1}'`

echo
git remote remove mainstream 2>/dev/null || true
git remote add mainstream https://github.com/AstroNvim/AstroNvim.git
git fetch mainstream

echo
git branch -D main-new 2>/dev/null || true
git checkout -b main-new mainstream/main

echo
git cherry-pick $CustomConfig

echo
git branch -D main
git checkout -b main
git branch -D main-new 2>/dev/null || true
git remote remove mainstream 2>/dev/null || true

echo
echo 'push changes via:'
echo
echo '  git push origin main -f'
echo
