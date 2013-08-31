# set general zsh options

# set functions path
fpath=(
    $DOTFILES/zsh/functions
    $fpath
)
export fpath

# remove non-unique items from fpath
typeset -U fpath

#
autoload -U $DOTFILES/zsh/functions/*(:t)

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
setopt COMPLETE_ALIASES

# set keybinding to vim
bindkey -v
