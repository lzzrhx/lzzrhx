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
alias i3-config='vim .config/i3/config'
alias enable-hdmi='xrandr --output HDMI-0 --auto --same-as DP-2'
alias enable-hdmi-right='xrandr --output HDMI-0 --auto --right-of DP-2'

export VISUAL=vim
export EDITOR="$VISUAL"
export LS_COLORS="ow=01;34:di=01;34"

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=5000

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
