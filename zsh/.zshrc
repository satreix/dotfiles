autoload -Uz promptinit
promptinit
setopt histignorealldups sharehistory
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

autoload -Uz compinit
compinit

export TERM="xterm-256color"

antigen::bunble_if_command() {
    local bin=$1
    local bundle=${2:-$1}
    command -v $bin > /dev/null 2>&1 && antigen bundle $bundle
}

ANTIGEN_FILE="$HOME/.config/dotfiles/zsh/antigen.zsh"
if [ -f $ANTIGEN_FILE ]; then
    source $ANTIGEN_FILE

    antigen use oh-my-zsh

    antigen bundle alias-finder
    antigen bundle bazel
    antigen bundle zsh_reload
    antigen bundle zsh-users/zsh-syntax-highlighting

    antigen::bunble_if_command autojump
    antigen::bunble_if_command brew
    antigen::bunble_if_command docker
    antigen::bunble_if_command fzf
    antigen::bunble_if_command git
    antigen::bunble_if_command kubectl

    antigen theme jreese

    antigen apply
fi

autoload -U zmv

export EDITOR='vim'
export PAGER='most'

alias unscp='scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias unssh='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias zshrc="$EDITOR ~/.zshrc"

mkcd() {
    mkdir -p "$1" && cd "$1"
}
