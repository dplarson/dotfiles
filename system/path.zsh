export PATH="/usr/local/bin:/usr/local/sbin:$ZSH/bin:/usr/local/share/python:$PATH"

export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"

# Remove duplicate paths from $PATH
PATH=`awk -F: '{for(i=1;i<=NF;i++){if(!($i in a)){a[$i];printf s$i;s=":"}}}'<<<$PATH`
