# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Git Aliasses
alias gs="git status"
alias gpl="git pull"
alias gps="git push"
alias gc="git commit"
alias gco="git checkout"
alias gca="git commit -a"
alias gmr="git merge"
alias gl='git log --graph --pretty=format:"%h (%an: %ar): %s"'

# Directory Aliasses
alias r="cd /rails/"
alias j="cd /java/"
alias gt="bundle show --paths | xargs ctags -R -a *"

alias rvmrc="rvm --rvmrc --create"

alias tm="mate ."
alias be="bundle exec"
alias stop_bluetooth="sudo launchctl unload /System/Library/LaunchDaemons/com.apple.blued.plist"
alias start_bluetooth="sudo launchctl load /System/Library/LaunchDaemons/com.apple.blued.plist"
alias clojure="rlwrap java -cp /clojure/clojure.jar clojure.main"

export EDITOR='vim'


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gem bundler brew rvm lol history-substring-search ruby rails)

source $ZSH/oh-my-zsh.sh

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export P4CONFIG=.p4config
export P4EDITOR=vim

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/bin/g4bin:/usr/local/sbin:/usr/X11/

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# Define Vim wrappers which unsets GEM_HOME and GEM_PATH before
# # invoking vim and all known aliases
# #
# # @author Wael Nasreddine <wael.nasreddine@gmail.com>
function define_vim_wrappers()
{
  vim_commands=(
  eview evim gview gvim gvimdiff gvimtutor rgview
  rgvim rview rvim vim vimdiff vimtutor xxd mvim
  )

  for cmd in ${vim_commands[@]}; do
    cmd_path=`/usr/bin/env which -a "${cmd}" 2>/dev/null | grep '^/'`
    if [ -x "${cmd_path}" ]; then
      eval "function ${cmd} () { (unset GEM_HOME; unset GEM_PATH; $cmd_path \$@) }"
    fi
  done
}

define_vim_wrappers

function lt() { ls -ltrsa "$@" | tail; }
function psgrep() { ps axu | grep -v grep | grep "$@" -i --color=auto; }
function fname() { find . -iname "*$@*"; }
