# set general zsh options

# set functions path
fpath=(
    $ZSH/zsh/functions
    $fpath
)
export fpath

# remove non-unique items from fpath
typeset -U fpath

#
autoload -U $ZSH/zsh/functions/*(:t)

# set terminal colors
export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

# set options
setopt NO_BG_NICE    # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS   # allow functions to have local traps
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF
setopt complete_aliases

# set keybinding to emacs
bindkey -e
