#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='${?#0}\[\e[35;1m\]\w\[\e[0m\] \$ '

PATH="/home/heather/.local/bin:/usr/local/bin:$PATH"
PATH="/opt/devkitpro/devkitPPC/bin:$PATH"
export ELECTRON_OZONE_PLATFORM_HINT="wayland"
eval "$(zoxide init bash)"

alias l='ls'
alias la='ls -a'
alias ll='ls -lah'

(cat ~/.cache/wal/sequences &)

. "$HOME/.atuin/bin/env"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"
. "$HOME/.cargo/env"
alias config='/usr/bin/git --git-dir=/home/heather/.cfg/ --work-tree=/home/heather'
alias bt=bluetoothctl
