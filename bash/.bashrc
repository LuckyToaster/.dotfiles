#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
export PS1="\[\033[38;5;13m\][\[$(tput sgr0)\]\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;208m\]@\[$(tput sgr0)\]\[\033[38;5;11m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;14m\]]\[$(tput sgr0)\]\[\033[38;5;13m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

# Set pointer speed
xset r rate 300 50

# Set gruvbox colorscheme with this script
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

# Set environment variables
export PATH="/home/lucky/.scripts/:$PATH"
export PATH="/home/lucky/.local/bin:$PATH"  # Adding isympy to path bc python compiler told me to
export VISUAL='/usr/bin/vim'
export EDITOR='/usr/bin/vim'

# aliases
alias ls='ls --color=always --group-directories-first'
alias l='lsd --group-dirs first'
alias list='lsd -lah --color=always --group-dirs first'
alias ..='cd ..'
alias cat='bat'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias diff='diff --color=auto'
alias r='ranger'
alias vol='pulsemixer'
alias du='du -h'
alias df='df -h'
# package management aliases
alias syu='sudo pacman -Syu'
alias syyu='sudo pacman -Syyu'
alias sps='sudo pacman -S'
alias spss='sudo pacman -Ss'

alias tiempo='curl wttr.in/Madrid'
alias timer='termdown'

cdls() {
    cd "$@" &&
    ls;
    }

# Set X keyboard map
setxkbmap -layout us,es -option grp:alt_shift_toggle
