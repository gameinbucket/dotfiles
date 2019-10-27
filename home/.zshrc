tabs 4
export VISUAL=vim
export EDITOR="$VISUAL"

bindkey -v
KEYTIMEOUT=1

function set-prompt {
    case ${KEYMAP} in
      (vicmd)      mode="-- NORMAL --" ;;
      (*)          mode="-- INSERT --" ;;
    esac
    PS1="%{%F{red}%}$mode%{%f%} %{%F{magenta}%}%n@%M%{%f%}:%{%F{blue}%}[%1d]%{%f%}$ "
    zle reset-prompt
}

function zle-line-init {
    set-prompt
}

function zle-keymap-select {
    set-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
