#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias config='/usr/bin/git --git-dir=/home/wykerd/.cfg/ --work-tree=/home/wykerd'

# CACA (for vids in terminal)
alias mpv_term='env CACA_DRIVER=ncurses mpv -vo=caca --really-quiet'

# V8
export PATH=/home/wykerd/packages/depot_tools:$PATH
