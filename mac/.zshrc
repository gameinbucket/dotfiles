# Set up the prompt

autoload -Uz promptinit
promptinit
prompt off

setopt histignorealldups sharehistory

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# custom

alias ls="ls -G"

precmd=""
preexec=""
chpwd=""

autoload -U select-word-style
select-word-style bash

tabs 4
export VISUAL=vim
export EDITOR="$VISUAL"

bindkey -e
export PS1="%{%F{magenta}%}%n%{%f%}:%{%F{blue}%}[%1d]%{%f%}$ "

bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
