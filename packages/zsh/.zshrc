# exports
export ZSH=$HOME/.oh-my-zsh
export N_PREFIX=$HOME/.local/.n
export PATH=$HOME/.local/.npm-global/bin:$HOME/.local/scripts:$HOME/.miniconda3/bin:$HOME/.gcloud/google-cloud-sdk/bin:/usr/local/go/bin:$N_PREFIX/bin:$PATH

# Binds
bindkey -s ^f "tmux-sessionizer.sh\n"

# Aliases
#alias vim="nvim"

# Oh My Zsh
ZSH_THEME="robbyrussell"
plugins=(git)

# Sourcing
source $ZSH/oh-my-zsh.sh

# Conda
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

