source ~/.bash_profile

# Cyber manners
alias plz='sudo'

# automatically start tmux
if [[ -z "$TMUX" ]] ;then
    # ID="`tmux ls | grep -vm1 attached | cut -d: -f1`" # get the id of the first deattached session
    ID="`tmux ls | grep -v attached | tail -n 1 | cut -d: -f1`" # get the id of the last deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
        tmux new-session
    else
        tmux attach-session -t "$ID" # if available attach to it
    fi
fi

# default editor: helix
export EDITOR=hx

# Trash
# alias rm='trash -F'
alias dl='trash'
alias tsh='trash'
alias tshcl='trash -s -y'

# exa -> ls
if [ "$(command -v exa)" ]; then
    unalias -m 'll'
    # unalias -m 'l'
    unalias -m 'la'
    unalias -m 'ls'
    alias ls='exa -G  --color auto --icons -s type'
    alias la='exa -G --color auto --icons -a -s type'
    alias ll='exa -l --color always --icons -a -s type'
fi

# dust -> du, duf -> df
alias du='dust'
alias df='duf'

# brew alias
alias brewcl='brew cleanup --prune 0'
alias brewup='brew update && brew upgrade && brew upgrade --cask --greedy'

# cargo alias
# cargo-cache
alias cargoclall='cargo cache --remove-dir all'
alias cargocl='cargo cache -a'
# cargo-update
alias cargoup='cargo install-update -a'

