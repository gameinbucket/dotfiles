tabs 4
stty -ixon

HISTSIZE=5000
HISTFILESIZE=10000
PROMPT_COMMAND='history -a'

export VISUAL=vim
export EDITOR="$VISUAL"
export PS1='\[\e[31m\]\u\[\e[m\] at \[\e[33m\]\h\[\e[m\] in \[\e[32m\]`pwd`\[\e[m\] \[\e[36m\]\\$\[\e[m\] '

alias ls='ls --color=auto'
alias ll='ls -l --color'
alias lt='ls -lt --color'
alias gg='ls -Aght --color --classify'

alias cd..='cd ..'

alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -vp'
alias grep='grep --color=auto'
alias repl='python'

function calc {
  python -c 'print('"$@"')'
}

function sort-json {
  python -c $'
import json
path = \''$1$'\'
if path == \'\':
    print("Format JSON file and sort keys.")
    print()
    print("Usage:")
    print("  $1  Path to JSON file")
    exit()
with open(path, "r") as f:
    js = json.loads(f.read())
    pretty = json.dumps(js, sort_keys=True, indent=2)
with open(path, "w", newline=\'\\n\') as f:
    f.write(pretty)
'
}

function recursive-sort-json {
  while IFS= read -r -d '' file
  do
    echo "$file"
    sort-json "$file"
  done < <(find -type f -regextype posix-egrep -regex '^.*\.json$' -print0)
}

function fzf {
  if [ $# -lt 1 ]; then
    echo 'Fuzzy file finder.'
    echo ''
    echo 'Usage:'
    echo '  $1  Partial file name to look for'
    echo '  $2  Open found file with command'
    return
  fi
  file="$1"
  shift
  if [ $# -ge 1 ]; then
    $@ $(find -type f -name '*'"$file"'*')
  else
    find -type f -name '*'"$file"'*'
  fi
}

