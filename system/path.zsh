# set path

# OSX-specific settings
if [ $(uname -s) = "Darwin" ] ; then

  # set system path
  path=(
    /usr/local/bin
    $path
    $ZSH/bin
    /usr/local/share/python
    /usr/texbin
    /usr/local/Cellar/gems/1.8/bin
    /usr/sbin
  )
  export PATH

  # set manual path (help files)
  manpath=(
    /usr/local/man
    /usr/local/git/man
    $manpath
  )
  export MANPATH

  # remove non-unique entries
  typeset -U PATH
  typeset -U MANPATH

fi
