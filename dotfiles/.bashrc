#
# ~/.bashrc
#

# Fix urxvt bug
# clear

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

#alias vi='vim'
alias vim='vim -p'
alias nvim='nvim -p'
#alias nvimdiff='nvim -d'
alias ls='ls --color=auto --group-directories-first'
alias ip='ip -color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
#alias xresources='xrdb -load ~/.Xresources'
alias lock='~/.config/i3/lock.sh'
alias reboot-windows='sudo grub-reboot "Windows" && sudo reboot'
#alias single-monitor='./.scripts/single-monitor.sh'
#alias dual-monitors='./.scripts/dual-monitors.sh'

export VISUAL=nvim
export EDITOR="$VISUAL"
export LS_COLORS="ow=01;94:di=01;94"

HISTCONTROL=ignoreboth
HISTSIZE=5000
HISTFILESIZE=5000

#PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
PS1='\[\033[01;94m\]\w ›\[\033[00m\] '
