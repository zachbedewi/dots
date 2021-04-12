#!/bin/bash
#
# c.sh
#
# Installs C development tools and sets up the development environment for C
# development.

# Stop on errors, print commands
set -Eeuo pipefail
echo_txt='export PATH="/usr/local/opt/llvm/bin:$PATH"'

echo "----------------------------------------"
echo "Installing LLVM toolchain"
echo "----------------------------------------"
brew install llvm

echo "----------------------------------------"
echo "Updating the PATH"
echo "----------------------------------------"
echo ${echo_txt} >> $HOME/.config/zsh/.zshrc
