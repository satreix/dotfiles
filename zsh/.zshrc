# This ZSH configuration file uses https://github.com/robbyrussell/oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="jreese"

# Plugins can be found in ~/.oh-my-zsh/plugins/
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(autojump autopep8 colorize docker git jsontools nmap python pylint zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='vim'
export PAGER='most'

alias clipboard='xclip -selection clipboard'
alias reload='source ~/.zshrc'
alias bmnt='bashmount'
alias zshrc="$EDITOR ~/.zshrc"
alias jog='~/bin/jogsoul/jogsoul.pl ~/bin/jogsoul/jogsoul.conf'
alias pytree="tree -I 'venv|__pycache__'"
alias unscp='scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias unssh='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

mkcd() {
    mkdir -p "$1" && cd "$1"
}

SSH_AGENT="$HOME/.ssh/__ssh-agent__"
if [ -f "$SSH_AGENT" ]; then
    source $SSH_AGENT > /dev/null
fi

__start_agent() {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent -t 1h | sed 's/^echo/#echo/' > "${SSH_AGENT}"
    chmod 600 "${SSH_AGENT}"
    source "${SSH_AGENT}" > /dev/null
    /usr/bin/ssh-add;
}

py_env () {
    if [ ! -d "venv" ]; then
        echo "Creating python venv"
        python -m venv venv;
    fi
    source venv/bin/activate
}
