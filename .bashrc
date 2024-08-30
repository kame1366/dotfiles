case $- in
*i*) ;;
*) return ;;
esac

export OSH='/home/mataneko/.oh-my-bash'

OSH_THEME="font"

OMB_USE_SUDO=true

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh
alias g='git'
alias vim='nvim'
alias ls='eza'
alias ll='eza -la'
export PATH=$HOME/.local/bin:$PATH
