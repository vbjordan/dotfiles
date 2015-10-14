set -o vi

PS1="[\u@\h \W]\\$ "

if [ -f $HOME/.aliases-trulia ]; then
  . $HOME/.aliases-trulia
fi

if [ -f $HOME/dotfiles-trulia/users/vjordan/trulia.ps1.bash ]; then
  source $HOME/dotfiles-trulia/users/vjordan/trulia.ps1.bash
fi

#export CDPATH=.:$HOME:$HOME/work
