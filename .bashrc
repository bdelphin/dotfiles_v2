#
# ~/.bashrc
#


# Pepper NaoQi Python SQK
export PYTHONPATH="/opt/pynaoqi-python2.7-2.5.7.1-linux64/lib/python2.7/site-packages"
export QI_SDK_PREFIX="/opt/pynaoqi-python2.7-2.5.7.1-linux64"


# pywal thingy
(cat ~/.cache/wal/sequences &)
#cat ~/.cache/wal/sequences


# import pywal colors
. "${HOME}/.cache/wal/colors.sh"
alias dmen='dmenu_run -nb "$color0" -nf "$color7" -sb "$color2" -sf "$color7"'

export bgpolybar_alpha="#BB${color0/'#'}"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias dd='dd status=progress'

alias ls='ls --color=auto'
alias lsa='ls -alh --color=auto'
alias neo='clear;neofetch;echo -e "There'"'"'s no place like 127.0.0.1.\n"'

alias mtpmount='simple-mtpfs --device 1 /media/phone'

alias texvim='vim -c '\'':autocmd BufWritePost * !pdflatex <afile> '\'
alias xetexvim='vim -c '\'':autocmd BufWritePost * !xelatex <afile> '\'

alias getws='i3-msg -t get_workspaces | jq ".[] | select(.focused==true).name" | cut -d"\"" -f2'
alias getmon='i3-msg -t get_workspaces | jq ".[] | select(.focused==true).name"'

alias ssh='clear && ssh'

alias clock='tty-clock -s -C 1 -c -B -f "%d/%m/%Y - Week No. %M"'

#PS1='[\u@\h \W]\$ '
PS1='\[\e[31m\]\u\[\e[m\] / \[\e[31m\]\w\[\e[m\] > '

#ugly, disabled
#date +%H:%M | toilet -F metal -f future
