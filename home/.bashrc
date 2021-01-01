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

function fmg {
  pos=0
  open=false
  keep=false
  refresh=true
  file=''
  while :
  do
    cur=0
    screen=''
    for entry in *
    do
      if [ $pos -eq $cur ]
      then
        if [ $open = true ]
        then
          if [ -d "$entry" ]
          then
             cd "$entry"
           else
             $EDITOR "$entry"
             keep=true
           fi
           break
        else
          file="$entry"
        fi
        screen+=" -> "
      else
        screen+="    "
      fi
      screen+="$entry"
      if [ -d "$entry" ]; then screen+=$'/\n'
      elif [ -x "$entry" ]; then screen+=$'*\n'
      else screen+=$'\n'
      fi
      cur=$((cur + 1))
    done
    if [ $open = true ]
    then
      [ $keep = false ] && pos=0
      open=false
      keep=false
      refresh=true
      continue
    fi
    if [ $refresh = true ]
    then
      refresh=false
      clear
    fi
    echo "$PWD"$'\n\n'"$screen"
    info="\"$file\" $(file -b "$file")"
    if [ -f "$file" ]
    then
      info+=", $(wc -l < "$file")L, $(wc -c < "$file")C"
    fi
    echo "$info"
    while :
    do
      read -srn 1
      case "$REPLY" in
        'j')
          pos=$((pos + 1))
          if [ $pos -ge $cur ]
          then
            pos=$((cur - 1))
            continue
          else
            refresh=true
          fi
          ;;
        'k')
          pos=$((pos - 1))
          if [ $pos -lt 0 ]
          then
            pos=0
            continue
          else
            refresh=true
          fi
          ;;
        'q')
          return
          ;;
        'h')
          cd ..
          pos=0
          refresh=true
          ;;
        'l')
          open=true
          refresh=true
          ;;
        *)
          continue
          ;;
      esac
      break
    done
  done
}
