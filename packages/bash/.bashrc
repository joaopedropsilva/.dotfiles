#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export N_PREFIX=$HOME/.local/.n
export PATH=$HOME/.local/.npm-global/bin:$HOME/.local/scripts:$N_PREFIX/bin:$PATH

bind -x '"\C-f":"tmux_sessionizer.sh"'
bind -x '"\C-t":"access_fast_log.sh"'

