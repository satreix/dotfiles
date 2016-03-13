#!/bin/sh

# Install oh-my-zsh

if hash zsh 2>/dev/null; then
    echo "Found zsh, installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo "Didn't find zsh, skipping oh-my-zsh installation"
fi
