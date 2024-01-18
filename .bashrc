#
# ~/.bashrc
#

clear

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#alias vim='nvim'
alias xresources='xrdb -load ~/.Xresources'
alias lock='~/.config/i3/lock.sh'
alias slurm='slurm -i wlp0s20f3'

export VISUAL=vim
export EDITOR="$VISUAL"

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=5000

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
