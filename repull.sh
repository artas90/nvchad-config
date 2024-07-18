#!/bin/sh
set -euo pipefail

RemoteUrl=`git config --get remote.origin.url`

echo
rm -rf `ls -a | tail +3`

echo
git clone $RemoteUrl .
