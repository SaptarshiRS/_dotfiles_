#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

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
