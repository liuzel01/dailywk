#!/bin/sh

# 执行脚本完成后，运行下面的指令
# git push  origin --force --all

git filter-branch -f --env-filter '

OLD_EMAIL="liuzelin01@outlook.com"
CORRECT_NAME="liuzelin"
CORRECT_EMAIL="liuzelin@hilonggroup.com"

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
