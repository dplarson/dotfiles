export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$ZSH/bin:$PATH"
export PATH="/usr/local/share/python:$PATH"
export PATH="/usr/texbin:$PATH"
export PATH="/usr/local/Cellar/gems/1.8/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="$HOME/anaconda/bin:$PATH"

export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"

# Remove duplicate paths from $PATH
PATH=`awk -F: '{for(i=1;i<=NF;i++){if(!($i in a)){a[$i];printf s$i;s=":"}}}'<<<$PATH`
