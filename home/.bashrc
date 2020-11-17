tabs 4

export VISUAL=vim
export EDITOR="$VISUAL"
export PS1='\[\e[31m\]\u\[\e[m\] at \[\e[33m\]\h\[\e[m\] in \[\e[32m\]`pwd`\[\e[m\] \[\e[36m\]\\$\[\e[m\] '

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
