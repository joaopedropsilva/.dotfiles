#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Prompt styling
DEFAULT_PS1='[\u@\h \W]\$ '
STYLING='\e[1m'
FG_COLOR='\e[32m'
RESET_STYLING='\e[0m'
DISPLAY='[\W]\$ '
PS1="$STYLING$FG_COLOR$DISPLAY$RESET_STYLING"

# Exports
export N_PREFIX=$HOME/.local/.n
export PATH=$HOME/.local/.npm-global/bin:$HOME/.local/scripts:$N_PREFIX/bin:$PATH

# Binds
bind -x '"\C-f":"tmux_sessionizer.sh"'
bind -x '"\C-t":"access_fast_log.sh"'

