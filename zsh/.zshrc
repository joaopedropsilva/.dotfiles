# SSH
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

ssh-add ./.ssh/github_key 
clear

# exports
export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.miniconda3/bin:$HOME/google-cloud-sdk/bin:/usr/local/go/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

# keymaps
setxkbmap -layout us,br -option grp:alt_shift_toggle

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/joaopedropsilva/google-cloud-sdk/path.zsh.inc' ]; then . '/home/joaopedropsilva/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/joaopedropsilva/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/joaopedropsilva/google-cloud-sdk/completion.zsh.inc'; fi

bindkey -s ^f "tmux-sessionizer\n"

# Aliases
alias susp="systemctl suspend"
alias bluet="bluetoothctl"
alias vim="nvim"
alias build="docker build . -t ansible"
alias run="docker run --rm -it ansible bash"

# Oh My Zsh
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh
source /opt/asdf-vm/asdf.sh
source /usr/share/nvm/init-nvm.sh
