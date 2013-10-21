RVM_PR="%{$fg[green]%}($(~/.rvm/bin/rvm-prompt))%{$reset_color%}"
TIME_="%{$fg[yellow]%}%T%{$reset_color%}"
LOCA_="%{$fg[cyan]%}(%~)%{$reset_color%}"
PR="%{$fg_bold[yellow]%}➜ %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}@%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔ "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗"

PROMPT="$TIME_ $PR $LOCA_$RVM_PR
\$(git_prompt_info) "
