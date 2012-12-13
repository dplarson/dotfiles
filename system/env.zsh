# Editor

if [ $(uname -s) = "Darwin" ] ; then
    export EDITOR='mvim'
else
    export EDITOR='vim'
fi
