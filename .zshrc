# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/daniel.russell/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

#Git aliases
alias 'branch'="git branch -avv --color"

#Docker aliases
alias killall='docker rm $(docker ps -a -q)'
alias removeall='docker rmi -f $(docker images -q)'
alias nukeall='docker rm $(docker ps -a -q) && docker rmi -f $(docker images -q) || docker rmi -f $(docker images -q)'
#Always misspelling this shit
alias dicker='docker'

#Filesystem Aliases
alias ll="ls -lhaG"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

#Kubernetes Aliases
alias k="kubectl"
alias po="kubectl get po"
alias pods="kubectl get po -w"
alias svc="kubectl get svc"
alias services="kubectl get svc -w"
alias contexts="kubectl config get-contexts"
alias ccontext="kubectl config use-context"

#Misc aliases
alias python="python3"

# Setting Shell default user text
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)Megalawls"
  fi
}
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/daniel.russell/Desktop/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/daniel.russell/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/daniel.russell/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/daniel.russell/Desktop/google-cloud-sdk/completion.zsh.inc'; fi
