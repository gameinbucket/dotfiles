tabs 4

export VISUAL=vim
export EDITOR="$VISUAL"
export PS1='\[\033[33m\][`pwd`]\[\033[0m\]$ '
# export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\][\W]\[\033[00m\]\$ '

HISTSIZE=5000
HISTFILESIZE=10000
PROMPT_COMMAND='history -a'

alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -vp'
alias ll='ls -l --color'
alias lt='ls -lt --color'
alias gg='ls -alF --color'
alias repl='python'

function calc {
  python -c 'print('"$@"')'
}
