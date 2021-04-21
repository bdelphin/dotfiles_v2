#
# ~/.bash_profile
#

if [[ -t 0 && $(tty) =~ /dev/tty ]] && ! pgrep -u $USER startx &> /dev/null;then
    echo "No X11 session detected, would you like to launch one ? [Y|n]"
    read -n 1 start_x
    if [[ $start_x == "n" ]];then
        echo "X11 won't be launched."
    else
#startx 2>&1 $HOME/.startx.log
	startx
    fi
fi


[[ -f ~/.bashrc ]] && . ~/.bashrc
source "$HOME/.cargo/env"
