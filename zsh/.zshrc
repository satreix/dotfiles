# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="jreese"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git autojump django)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='vim'
export PAGER='most'

alias clipboard='xclip -selection clipboard'
alias reload='source ~/.zshrc'
alias install='yaourt -S'
alias uninstall='yaourt -Rsn'
alias update='yaourt -Syu'
alias bmnt='bashmount'
alias zshrc="$EDITOR ~/.zshrc"
alias jog='~/bin/jogsoul/jogsoul.pl ~/bin/jogsoul/jogsoul.conf'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

vpenis() {
    echo `uptime|grep days|sed 's/.*up \([0-9]*\) day.*/\1\/10+/'; cat \
    /proc/cpuinfo|grep '^cpu MHz'|awk '{print $4"/30 +";}';free|grep \
    '^Mem'|awk '{print $3"/1024/3+"}'; df -P -k -x nfs | grep -v \
    1k | awk '{if ($1 ~ "/dev/(scsi|sd|md)"){ s+= $2} s+= $2;} END \
    {print s/1024/50"/15+70";}'`|bc|sed 's/\(.$\)/.\1cm/'
}

mkcd() { mkdir -p "$1" && cd "$1" }
epath() { export PATH=$PATH:$1 }
