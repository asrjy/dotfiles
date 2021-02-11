#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias head0='sh ~/Documents/wacom-head0.sh'
alias head1='sh ~/Documents/wacom-head1.sh'

alias ls='ls --color=auto'
#force_color_prompt=yes
#if [ "$color_prompt" = yes ]; then
export PS1="\[\033[01;37m\][\[\033[01;33m\]\u\[\033[01;31m\]@\[\033[01;32m\]\H \[\033[01;36m\]\W\[$(tput sgr0)\]\[\033[01;37m\]]\[\033[01;31m\]\\$ \[$(tput sgr0)\]"

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

echo "PATH=$PATH:~/.config/rofi/bin" >> ~/.profile

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/yash/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/yash/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/yash/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/yash/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export QT_QPA_PLATFORMTHEME=qt5ct
