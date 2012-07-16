# functions
fpath=($ZSH/zsh/functions $fpath)

autoload -U $ZSH/zsh/functions/*(:t)

# colors
export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

# options
setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

# Change to a directory by just entering name
setopt auto_cd

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

# set keybinding to emacs
bindkey -e
