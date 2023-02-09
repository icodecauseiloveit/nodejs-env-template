#!/bin/sh

# Setting up Git
git config --global user.name "$NAME"
git config --global user.email $EMAIL
git config --global init.defaultBranch main
git config --global core.editor "code --wait"
git config --global alias.superlog "log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"


echo "Git configured successfully!"
