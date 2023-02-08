#!/bin/sh

# Copying .zshrc to container
cp -f ./.devcontainer/config/.zshrc ~/
echo ".zshrc file copied into container successfully!"