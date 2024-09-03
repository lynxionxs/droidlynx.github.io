#!/bin/bash

USERNAME="lynxionxs"
GHTK=$(cat $HOME/github/ghtk2025)
REPO=$(basename "$PWD")

NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
dt=$(date '+%d/%m/%Y %H:%M:%S')
commitText="$NEW_UUID - $dt"

git add .

git commit -m "$commitText"

# git push
git push "https://$USERNAME:$GHTK@github.com/$USERNAME/$REPO.git"

# sleep 10

echo "-----------------------------"
echo "----- DEPLOY GIT DONE -------"
echo "-----------------------------"

sleep 10
