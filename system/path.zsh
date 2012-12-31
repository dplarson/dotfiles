# set system path
PATH="/usr/local/bin:$PATH"
PATH="$PATH:/usr/local/sbin"
PATH="$PATH:$ZSH/bin"
PATH="$PATH:/usr/local/share/python"
PATH="$PATH:/usr/texbin"
PATH="$PATH:/usr/local/Cellar/gems/1.8/bin"
PATH="$PATH:/usr/sbin"
export PATH

# set manual path
MANPATH="/usr/local/git/man:$MANPATH"
MANPATH="/usr/local/man$MANPATH"
export MANPATH

# select only unique entries
typeset -U PATH
typeset -U MANPATH
