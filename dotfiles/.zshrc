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

# Aliases
alias vim='vim -p'
alias nvim='nvim -p'
alias ls='ls --color=auto --group-directories-first'
alias ip='ip -color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias lock='~/.config/i3/lock.sh'
alias reboot-windows='sudo grub-reboot "Windows" && sudo reboot'

# Enviroment variables
VISUAL=nvim
EDITOR="$VISUAL"
LS_COLORS="ow=94:di=94"
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
HISTDUP=erase

# Prompt style
PROMPT=$'%{\e[94m%}%~ ›%{\e[00m%} '

# Options
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt autocd
unsetopt beep
bindkey -e

# The following lines were added by compinstall
zstyle :compinstall filename '/home/laser_wolf/.zshrc'

# Command completion
autoload -Uz compinit; compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-dirs-first
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*' group-name ''

