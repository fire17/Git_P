#!/bin/bash
echo ::: Setting up Git P - Easy Git Shortcuts :::

# Thanks to this answer : https://stackoverflow.com/a/35049625/3196006

# Add All, Commit $message, and Push
git config --global alias.cmp '!f() { git add -A && git commit -m "$@" && git push; }; f'

# Pull, Add all, Commit $message, and Push
git config --global alias.p '!f() { git pull && git add -A && git commit -m "$@" && git push; }; f'

# Clone user/Repo as ssh, as worktree
# git config --global alias.cwt '!f() { git clone --bare git@github.com:$@.git $@ && cd $@ && git worktree add main ; }; f'
git config --global alias.cwt '!f() { git clone --bare git@github.com:$@.git ${@##*/} && cd ${@##*/} && git worktree add main ; }; f'


# Easy amend
# should check if there is a message, if not use --no-edit
#git config --global alias.sorry '!f() { git clone --bare git@github.com:"$@".git && git worktree add master ; }; f'
#git config --global alias.sry '!f() { git clone --bare git@github.com:"$@".git && git worktree add master ; }; f'
#git config --global alias.amend '!f() { git clone --bare git@github.com:"$@".git && git worktree add master ; }; f'


# Clone user/Repo as ssh, as worktree
git config --global alias.graph '!f() { git log --graph --oneline --decorate ; }; f'

# Medium Git

# list branches
# git branch -a

# Intermidiate/Advanced Git
# Rename Branch (when on a branch)
#git branch -M newBranchName

# Better stashing
# git stash save 
# git stash list
# git stash apply 0

# should learn and include submodules
# should learn and include revert

# should learn and include squash
# squash is applied when rebasing (or merging)
# rebasing is taking the head of a branch [feature]
# and making a new commit on master that is all just the head of the feature
# git rebase master -i/--interactive
# to squash the rebase so it produces one commit:
# change all the "pick" to "squash"
# use "reword" if you want to change the message
# exit and save the new commit message
# also before starting the rebase, you can also
# git commit --squash commitID
# then
# git rebase -i --autosquash


# Git bisect to find a bad commit
#git bisect lastWorkingCommit
# check if commit working or not
#git bisect good/bad 
# Does a binary search from lastWorkingCommit to current to indentify the target commit
# Does not change the code ? only checksout commits until done, then you are at the target commit ?


################
# Git Hooks !
################
# checkout the hooks folder in .git