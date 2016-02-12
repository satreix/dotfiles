# This ZSH configuration file uses https://github.com/robbyrussell/oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="jreese"

# Plugins can be found in ~/.oh-my-zsh/plugins/
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(autojump colorize docker git jsontools nmap python pylint zsh-syntax-highlighting)

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

vpenis() {
    echo `uptime|grep days|sed 's/.*up \([0-9]*\) day.*/\1\/10+/'; cat \
    /proc/cpuinfo|grep '^cpu MHz'|awk '{print $4"/30 +";}';free|grep \
    '^Mem'|awk '{print $3"/1024/3+"}'; df -P -k -x nfs | grep -v \
    1k | awk '{if ($1 ~ "/dev/(scsi|sd|md)"){ s+= $2} s+= $2;} END \
    {print s/1024/50"/15+70";}'`|bc|sed 's/\(.$\)/.\1cm/'
}

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
