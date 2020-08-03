#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if ! hash zsh 2>/dev/null; then
    echo "Didn't find zsh, skipping oh-my-zsh installation"
    exit 1
fi

echo "Silencing login banner"
touch "$HOME/.hushlogin"

echo "Downloading antigen"
curl -s -L -o "$DIR/antigen.zsh" git.io/antigen

backup_and_link() {
    local real=$1
    local link=$2

    if [ ! -L $link ]; then
        mv "$link" "$link.old"
        echo "backed up zsh configuration to $link.old"
    fi

    if [ ! "$(readlink -- "$HOME/.zshrc")" = "$DIR/.zshrc" ]; then
        rm -f "$HOME/.zshrc"
        ln -s "$DIR/.zshrc" "$HOME/.zshrc"
    fi
}

echo "Linking configuration"
backup_and_link "$DIR/.zshrc" "$HOME/.zshrc"
