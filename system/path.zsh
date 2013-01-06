# set path

# OSX-specific settings
if [ $(uname -s) = "Darwin" ] ; then

  # set system path
  path=(
    /usr/local/bin
    /usr/local/sbin
    $path
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

  # set ruby gems path
  export GEM_HOME="$(brew --prefix)/Cellar/gems/1.8"

fi

# OS-independent settings
path=(
  $path
  $ZSH/bin
)
export PATH

# remove non-unique entries
typeset -U PATH
typeset -U MANPATH
typeset -U GEM_HOME
