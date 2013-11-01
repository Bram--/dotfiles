RVM_PR="%{$fg[green]%}@$(~/.rvm/bin/rvm-prompt)%{$reset_color%}"
TIME_="%{$fg[yellow]%}%T%{$reset_color%}"
LOCA_="%{$fg[cyan]%}%~%{$reset_color%}"
PR="%{$fg_bold[yellow]%}➜ %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗%{$reset_color%} "

function git_dirty {
  if [[ $(git diff --shortstat 2> /dev/null | tail -n1) != "" ]]; then
    echo $ZSH_THEME_GIT_PROMPT_DIRTY;
  else
    echo $ZSH_THEME_GIT_PROMPT_CLEAN;
  fi
}

function git-prompt {
  local full_status="`git status -bs -u all --ignore-submodules=all 2>/dev/null`"

  if [ $full_status ]; then
    local branch_name="`echo $full_status | sed "s/^[^[:space:]]* \([^[:space:]\.]*\).*$/\1/g"`"
    local ahead="`echo $full_status | sed "s/^.*\(\[[^\[]*\]\)$/\1/;tx;d;:x"`"
    if [ $ahead ]; then
      ahead="%{$fg_bold[yellow]%}$ahead%{$reset_color%} "
    fi

    echo "$ahead%{$fg_bold[white]%}$branch_name%{$reset_color%}$(git_dirty)"
  fi
}


PROMPT="$TIME_ $PR $LOCA_$RVM_PR
\$(git-prompt)"

