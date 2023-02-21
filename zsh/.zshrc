eval "$(ssh-agent -s)"
ssh-add ./.ssh/github_key
clear

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.miniconda3/bin:$PATH:$HOME/google-cloud-sdk/bin:$PATH
source /opt/asdf-vm/asdf.sh

setxkbmap -layout us,br -option grp:alt_shift_toggle

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/joaopedropsilva/.miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/joaopedropsilva/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/joaopedropsilva/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/joaopedropsilva/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/joaopedropsilva/google-cloud-sdk/path.zsh.inc' ]; then . '/home/joaopedropsilva/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/joaopedropsilva/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/joaopedropsilva/google-cloud-sdk/completion.zsh.inc'; fi
