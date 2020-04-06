tabs 4
export VISUAL=vim
export EDITOR="$VISUAL"
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\][\W]\[\033[00m\]\$ '

function ll {
  ls -l --color "$@"
}

function gg {
  ls -alF --color "$@"
}

function calc {
  python -c 'print('"$@"')'
}

PATH=""
PATH="$PATH:/usr/local/sbin"
PATH="$PATH:/usr/local/bin"
PATH="$PATH:/usr/sbin"
PATH="$PATH:/usr/bin"
PATH="$PATH:/sbin"
PATH="$PATH:/bin"
PATH="$PATH:/usr/games"
PATH="$PATH:/usr/local/games"
PATH="$PATH:/snap/bin"
PATH="$PATH:/usr/local/go/bin"

export PATH
