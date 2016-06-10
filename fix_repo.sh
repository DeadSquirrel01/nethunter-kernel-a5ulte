#!/bin/sh

git filter-branch --env-filter '

am="$GIT_AUTHOR_EMAIL"
cm="$GIT_COMMITTER_EMAIL"

if [ "$GIT_COMMITTER_EMAIL" = "m.marcaccini01@gmail.com" ]
then
    cm="m.marcaccini01@gmail.com"
fi
if [ "$GIT_AUTHOR_EMAIL" = "m.marcaccini01@gmail.com" ]
then
    am="m.marcaccini01@gmail.com"
fi

export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_EMAIL="$cm"
'
