#!/bin/sh

# Install oh-my-zsh

if [ -x /usr/bin/zsh ]; then
    omzsh_url='https://github.com/robbyrussell/oh-my-zsh'
    echo "Found zsh, installing oh-my-zsh: $omzsh_url"
    sh -c "$(curl -fsSL ${omzsh_url}/master/tools/install.sh)"
elif
    echo "Didn't find zsh, skipping oh-my-zsh installation"
fi
