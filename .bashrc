#
# ~/.bashrc
#

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim="nvim"
alias slurm="slurm -i wlp7s0"
alias ocs="ssh laserwolf@192.168.1.99"
alias xresources="xrdb ~/.Xresources"

export VISUAL=nvim
export EDITOR="$VISUAL"

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

#PS1='[\u@\h \w]\$ '
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
