#!/bin/sh

# Setting up Git
git config --global user.name "$NAME"
git config --global user.email $EMAIL
git config --global init.defaultBranch main
git config --global core.editor "code --wait"

echo "Git configured successfully!"