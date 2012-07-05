export PATH="/usr/local/bin:/usr/local/sbin:/usr/sbin:$ZSH/bin:/usr/local/share/python:/usr/texbin:/usr/local/Cellar/gems/1.8/bin:$PATH"

export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"

# Remove duplicate paths from $PATH
PATH=`awk -F: '{for(i=1;i<=NF;i++){if(!($i in a)){a[$i];printf s$i;s=":"}}}'<<<$PATH`
