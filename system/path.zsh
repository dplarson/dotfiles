export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:$ZSH/bin:"
#export PATH="$PATH:$HOME/anaconda/bin"
export PATH="$PATH:/usr/local/share/python"
export PATH="$PATH:/usr/texbin"
export PATH="$PATH:/usr/local/Cellar/gems/1.8/bin"
export PATH="$PATH:/usr/sbin"

export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"

# Remove duplicate paths from $PATH
PATH=`awk -F: '{for(i=1;i<=NF;i++){if(!($i in a)){a[$i];printf s$i;s=":"}}}'<<<$PATH`
