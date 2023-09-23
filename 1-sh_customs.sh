#ADD PATH FOR AUTO_KEY
export PATH=$HOME/.local/bin:$PATH

#ADD PATH FOR BREW
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH

# Devops
alias awkp="awk -v OFS='\t'"
alias dk="docker"
alias dkc='docker compose'
alias cl="clear"
alias dki="docker image"
alias dkpsaq="docker ps -a -q"
# alias kubectl="minikube kubectl --"

alias dkmk="minikube"
alias trf='terraform'
alias trfa='terraform apply'
alias trfp='terraform plan'

#ZSH
plugins=(
  git
  autojump
  zsh-autosuggestions
  zsh-syntax-highlighting
  kube-ps1
)

export ZSH_THEME="powerlevel10k/powerlevel10k"
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# 현재 스크립트 파일의 디렉토리 경로를 얻기
SCRIPT_DIR=$(dirname $0)
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $SCRIPT_DIR/p10k.zsh ]] || source $SCRIPT_DIR/p10k.zsh

# don't put duplicate lines or lines starting with space in the  history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
#shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000  
HISTFILESIZE=200000

export LESS="-XFR"
