# Use this file to add additional aliases

# execute previous command with sudo
alias please='sudo $(history -p !!)'

# mkcd
mkcd() { if [ ! -d "$@" ];then mkdir -p "$@" ;fi; cd "$@"; } 

cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls -F --color=auto
}

alias update='sudo apt update && sudo apt -y upgrade; flatpak -y update'

alias logoff="gnome-session-quit"
alias wget='wget -c '
alias ping='ping -c 5'
alias ipe='curl ipinfo.io/ip'
alias ipi='ipconfig getifaddr en0'
alias diff='colordiff'
alias path='echo -e ${PATH//:/\\n}'
alias mv="mv -v"
alias rm="rm -vi"
alias cp="cp -v"
alias sudo='sudo '
alias lt='ls --human-readable --size -1 -S --classify'

