#!/bin/sh

if [ -d ".git" ]; then
    rm -rf ".git"
fi

git init
git add .
git commit -m "init"
git remote add origin git@github.com:yandbox/vscode-yan.git
git push -fu origin master
