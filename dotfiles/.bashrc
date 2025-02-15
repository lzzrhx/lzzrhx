#
# ~/.bashrc
#

clear

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vi='vim'
alias vim='vim -p'
alias ls='ls --color=auto --group-directories-first'
alias ip='ip -color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias xresources='xrdb -load ~/.Xresources'
alias lock='~/.config/i3/lock.sh'
alias slurm='slurm -i wlp0s20f3'
alias i3-config='vim .config/i3/config'
alias reboot-windows='sudo grub-reboot "Windows" && sudo reboot'
alias single-monitor='./.scripts/single-monitor.sh'
alias dual-monitors='./.scripts/dual-monitors.sh'

export VISUAL=vim
export EDITOR="$VISUAL"
export LS_COLORS="ow=01;34:di=01;34"

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=5000

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
