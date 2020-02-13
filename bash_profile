set -o vi

PS1="[\u@\h \W]\\$ "

if [ -f $HOME/.aliases-trulia ]; then
  . $HOME/.aliases-trulia
fi

if [ -f $HOME/dotfiles-trulia/users/vjordan/trulia.ps1.bash ]; then
  source $HOME/dotfiles-trulia/users/vjordan/trulia.ps1.bash
fi

export CDPATH=.:$HOME:$HOME/work

source $HOME/.bashrc

#HOMEBREW_PREFIX=$(brew --prefix)
#if type brew &>/dev/null; then
#  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
#    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
#  else
#    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
#      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
#    done
#  fi
#fi
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh" 
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
