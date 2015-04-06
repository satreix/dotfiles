export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="jreese"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(autojump colorize docker git jsontools nmap python pylint zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='vim'
export PAGER='most'

alias clipboard='xclip -selection clipboard'
alias reload='source ~/.zshrc'
alias install='yaourt -S'
alias uninstall='yaourt -Rsn'
alias update='yaourt -Syua'
alias bmnt='bashmount'
alias zshrc="$EDITOR ~/.zshrc"
alias jog='~/bin/jogsoul/jogsoul.pl ~/bin/jogsoul/jogsoul.conf'

vpenis() {
    echo `uptime|grep days|sed 's/.*up \([0-9]*\) day.*/\1\/10+/'; cat \
    /proc/cpuinfo|grep '^cpu MHz'|awk '{print $4"/30 +";}';free|grep \
    '^Mem'|awk '{print $3"/1024/3+"}'; df -P -k -x nfs | grep -v \
    1k | awk '{if ($1 ~ "/dev/(scsi|sd|md)"){ s+= $2} s+= $2;} END \
    {print s/1024/50"/15+70";}'`|bc|sed 's/\(.$\)/.\1cm/'
}

mkcd() { mkdir -p "$1" && cd "$1" }
epath() { export PATH=$PATH:$1 }
