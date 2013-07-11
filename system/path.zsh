# set path

# OSX-specific settings
if [ $(uname -s) = "Darwin" ] ; then

  # system path
  path=(
    $HOME/.rbenv/shims
    /usr/local/bin
    /usr/local/sbin
    $path
    /usr/texbin
    /usr/local/Cellar/gems/1.8/bin
    /usr/sbin
  )
  export PATH

  # manuals (help files)
  manpath=(
    /usr/local/share/man
    /usr/share/man
    $manpath
  )
  export MANPATH

  # python
  export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

fi

# OS-independent settings
path=(
  $path
  $DOTFILES/bin
)
export PATH

# remove non-unique entries
typeset -U PATH
typeset -U MANPATH
typeset -U PYTHONPATH
