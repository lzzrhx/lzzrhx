# Modules
zmodload -i zsh/complist

# Options
setopt extended_history
setopt append_history
setopt share_history
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt autocd
unsetopt beep

# Enviroment variables
export VISUAL=nvim
export EDITOR="$VISUAL"
export LS_COLORS="ow=94:di=94"
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTDUP=erase

# Aliases
alias df='duf'
alias find='fd'
alias tree='erd'
alias grep='rg'
alias cat='bat'
alias fcp='xclip -sel c < '
alias vim='vim -p'
alias nvim='nvim -p'
alias ls='ls --color=auto --group-directories-first'
alias ip='ip -color=auto -brief'
alias diff='diff --color=auto'
alias lock='~/.config/i3/lock.sh'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
#alias grep='grep --color=auto'
#alias vi='nvim'
#alias reboot-windows='sudo grub-reboot "Windows" && sudo reboot'
#alias ls='eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'

# Default prompt style
PROMPT=$'%{\e[94m%}%~ ›%{\e[00m%} '

# Promt style with hostname
#PROMPT=$'%{\e[92m%}(%m) %{\e[94m%}%~ ›%{\e[00m%} '

# Command completion
autoload -Uz compinit; compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-dirs-first true
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-tab false

# Keybinds
bindkey -e
KEYTIMEOUT=1
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "\e[5~" history-search-backward
bindkey "\e[6~" history-search-forward
bindkey -M emacs '^R' fzf-history-widget
bindkey -M emacs '\ec' fzf-cd-widget
bindkey -M emacs '^T' fzf-file-widget
bindkey "\e[3~" delete-char
bindkey -M menuselect '\e' send-break
bindkey -M menuselect '^M' accept-line

# Pomodoro timer
pomodoro-timer () { timer -n "$1$4" $2m --format 24h && mplayer ~/.sounds/$3.wav > /dev/null 2>&1 }
alias work='pomodoro-timer "Work" 25 pom1'
alias sbreak='pomodoro-timer "Short break" 5 pom2'
alias lbreak='pomodoro-timer "Long break" 30 pom2'
alias pomodoro='echo "Starting 2.5 hour Pomodoro session:" && work " 1/4" && sbreak " 1/4" && work " 2/4" && sbreak " 2/4" && work " 3/4" && sbreak " 3/4" && work " 4/4" && sbreak " 4/4" && lbreak'

# Auto run ls after cd
function chpwd_cdls() {
  emulate -L zsh
  ls
}
if [[ ${chpwd_functions[(r)chpwd_cdls]} != "chpwd_cdls" ]];then chpwd_functions=(${chpwd_functions[@]} "chpwd_cdls") fi

# zoxide
eval "$(zoxide init zsh)"

# yazi
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

# fzf
source <(fzf --zsh)
show_file_or_dir_preview="if [ -d {} ]; then ls -a {} | head -200; else cat {} | head -500; fi"
export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'ls -a {} | head -200'"
_fzf_comprun() {
  local command=$1
  shift
  case "$command" in
    cd)           fzf --preview 'ls -a {} | head -200' "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}
