# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


if [ -f $HOME/.aliases-trulia ]; then
	. $HOME/.aliases-trulia
fi

if [ -f $HOME/.aliases ]; then
  . $HOME/.aliases
fi

export EDITOR=vim
set -o vi
set editing-mode vi

export PATH=$PATH:~/local/bin:~/git/truliapro:~/bin
export MANPATH=$MANPATH:~/local/man:~/bin/share/man

export CDPATH=.:~/git:~/public_html:~


export LESS=-RX

export GREP_OPTIONS='--color=auto'
export ACK_PAGER="less"
export GIT_SSL_NO_VERIFY=true


# source /etc/bash_completion.d/git
if [ -f $HOME/etc/bash_completion ]
then
  source $HOME/etc/bash_completion
fi

if [ -f $HOME/etc/bash_completion_tmux.sh ]
then
  source $HOME/etc/bash_completion_tmux.sh
fi

if [ -f $HOME/git/dotfiles/users/vjordan/trulia.ps1.bash ]
then
  source $HOME/git/dotfiles/users/vjordan/trulia.ps1.bash
fi

if [ -f $HOME/trulia-dotfiles/users/vjordan/trulia.ps1.bash ]
then
  source $HOME/trulia-dotfiles/users/vjordan/trulia.ps1.bash
fi

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

function mygrep ()
{
  cmd="find $2 -type d \( -name .git -o -name vendor -o -name tests \) -prune -o -type f -print0 | xargs -0 egrep --color=always -in '$1'"
  echo $cmd 
  eval $cmd
}

function mg ()
{
  mygrep "$1" "$2" 
}

function mgc ()
{
  mygrep "Frisn -C 20" "$1" "$2" "| less"
}

function mgcs ()
{
  mygrep "Frisn -C 10" "$1" "$2" "| less"
}

function mgl ()
{
  mygrep "Flris" "$1" "$2" 
}

function mgv()
{
  mygrep "Flris" "$1" "$2" "| xargs startvim vim"
}

PATH="/home/vjordan/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/vjordan/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/vjordan/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/vjordan/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/vjordan/perl5"; export PERL_MM_OPT;

PKG_CONFIG_PATH='/home/vjordan/';

LZMA_LIBS='/home/vjordan/lib';
