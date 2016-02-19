#!/bin/sh

# Install oh-my-zsh

if [ -x /usr/bin/zsh ]; then
    echo "Found zsh, installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo "Didn't find zsh, skipping oh-my-zsh installation"
fi
