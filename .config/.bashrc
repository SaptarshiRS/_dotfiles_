#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Config home (default used by many applications)
export XDG_CONFIG_HOME=$HOME/.config

# Command completion from history
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Start Starship prompt
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
eval "$(starship init bash)"

# Pokemon sprites
pokemon-colorscripts -r --no-title | fastfetch --file-raw -

# Epigram
# fortune -a -s

# Cargo environment
. "$HOME/.cargo/env"

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
export MAMBA_EXE='/home/reeju/repos/gpe/.local/bin/micromamba';
export MAMBA_ROOT_PREFIX='/home/reeju/repos/gpe/.local/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from micromamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

