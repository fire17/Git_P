#!/bin/bash
echo ::: Setting up Git P - Easy Git Shortcuts :::

# Thanks to this answer : https://stackoverflow.com/a/35049625/3196006

git config --global alias.cmp '!f() { git add -A && git commit -m "$@" && git push; }; f'

git config --global alias.p '!f() { git pull && git add -A && git commit -m "$@" && git push; }; f'

git config --global alias.cwt '!f() { git clone --bare git@github.com:"$@".git && git worktree add master ; }; f'
