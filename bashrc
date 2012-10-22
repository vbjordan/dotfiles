# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

. /home/vjordan/.aliases

export EDITOR=vim
export SVN_EDITOR=vim
set -o vi
set editing-mode vi

PATH=$PATH:~/local/bin:~/svn/truliapro

export LESS=-RX

export GREP_COLORS="mc=00;36:ms=31:mt=01;38:ln=31"
export ACK_PAGER="less"
export GIT_SSL_NO_VERIFY=true

export REPO="svn+ssh://svn.utah.trulia.com/usr/local/svnrepos/TRULIA/"

function mygrep ()
{
  cmd="grep -$1 --color=always \"$2\" $3 | grep -v '\.svn' | grep -v 'tags' $4"
  echo $cmd 
  eval $cmd
}

function mg ()
{
  mygrep "Frisn" "$1" "$2" "| less"
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
