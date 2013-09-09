# Path to your oh-my-zsh configuration.
ZSH=$HOME/.config/oh-my-zsh

# Set name of the theme to load (~/.oh-my-zsh/themes/).
# Optionally, if you set this to "random".
ZSH_THEME="jreese"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Plugins to load? (plugins can be found in ~/.config/oh-my-zsh/plugins/*)
plugins=(archlinux git symfony2 composer django)

source $ZSH/oh-my-zsh.sh

export PATH=/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/satreix/.gem/ruby/2.0.0/bin
export PAGER=most
export EDITOR=vim
export GOPATH=/home/satreix/Work/go
