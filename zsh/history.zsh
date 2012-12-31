# customize zsh history

# set history file location
HISTFILE=~/.zsh_history

# set history size
HISTSIZE=10000
SAVEHIST=10000

# set options
setopt HIST_VERIFY
setopt SHARE_HISTORY        # share history between sessions
setopt EXTENDED_HISTORY     # add timestamps to history
setopt APPEND_HISTORY       # adds history
setopt INC_APPEND_HISTORY   # adds history incrementally
setopt HIST_IGNORE_ALL_DUPS # don't record dupes in history
setopt HIST_REDUCE_BLANKS   # 
