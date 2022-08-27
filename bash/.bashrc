# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


sv-enable(){
  sudo ln -s /etc/sv/$(ls /etc/sv/ | dmenu -l 20) /var/service/
}

sv-disable(){
  sudo rm /var/service/$(ls /var/service/ | dmenu -l 20)
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/neil/Downloads/yes/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/neil/Downloads/yes/etc/profile.d/conda.sh" ]; then
        . "/home/neil/Downloads/yes/etc/profile.d/conda.sh"
    else
        export PATH="/home/neil/Downloads/yes/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

