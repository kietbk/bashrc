# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac
PATH=${PATH}:.
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac
color_prompt=yes
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
#unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
cat /dev/null >~/.bash_history
history -c

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
alias gitlog="git log --graph --pretty=oneline --abbrev-commit"
alias ...="./run"
alias ..="dirs -v"

alias .1="pushd +1 &>/dev/null;l "
alias .2="pushd +2 &>/dev/null;l "
alias .3="pushd +3 &>/dev/null;l "
alias .4="pushd +4 &>/dev/null;l "
alias .5="pushd +5 &>/dev/null;l "
alias .6="pushd +6 &>/dev/null;l "
alias .7="pushd +7 &>/dev/null;l "
alias .8="pushd +8 &>/dev/null;l "
alias .9="pushd +9 &>/dev/null;l "
alias .10="pushd +10 &>/dev/null;l "
alias .11="pushd +11 &>/dev/null;l "
alias .12="pushd +12 &>/dev/null;l "
alias .13="pushd +13 &>/dev/null;l "
alias .14="pushd +14 &>/dev/null;l "
alias .15="pushd +15 &>/dev/null;l "
alias .16="pushd +16 &>/dev/null;l "
alias .17="pushd +17 &>/dev/null;l "
alias .18="pushd +18 &>/dev/null;l "
alias .19="pushd +19 &>/dev/null;l "
alias .20="pushd +20 &>/dev/null;l "

alias ..docker="docker start -ai 9dfb05676502"
alias .b="bash ~/kiet/linux4.15/build-lager.sh"
alias .b3="bash ~/kiet/linux4.15/build-gose.sh"
alias .bt="bash /home/rvc/kiet/linuxTemp/build-lager.sh"
alias .bt3="bash /home/rvc/kiet/linuxTemp/build-gose.sh"
alias vimdt="cd ~/kiet/linux4.15/linux-4.15/arch/arm/boot/dts; vim r8a7790.dtsi r8a7790-lager.dts"
alias vimdt3="cd ~/kiet/linux4.15/linux-4.15/arch/arm/boot/dts; vim r8a7793.dtsi r8a7793-gose.dts"
alias .cdk="cd ~/kiet/linux4.15/linux-4.15/"
alias .cdkt="cd ~/kiet/linuxTemp/linux"
alias gitfile="git diff-tree --no-commit-id --name-only -r HEAD"
alias gitlistfile="git ls-tree --name-only -r HEAD"
alias cd1="cd .."
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."
alias cd6="cd ../../../../../.."
function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\"";
}
export PATH="$HOME/bin:$PATH"
export VISUAL=vim
export EDITOR="$VISUAL"
export TERM=xterm-256color
export g1="grep -RInH"
export g="grep -r -i --include=*.c --include=*.h"
export LANGUAGE=
export LC_ALL=
source ~/kiet/.dir.sh

function findx {
    grep -E $@ ~/.filekm
}


