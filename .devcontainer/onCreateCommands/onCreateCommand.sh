#!/bin/sh

# Setting up Git
sh .devcontainer/onCreateCommands/configure-git.sh

# Copying .zshrc to container
sh .devcontainer/onCreateCommands/configure-zsh.sh