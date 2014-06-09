# set path

# OSX-specific settings
if [ $(uname -s) = "Darwin" ] ; then

  export GOPATH=$HOME/go

  # system path
  path=(
    $HOME/.rbenv/shims
    /usr/local/bin
    /usr/local/sbin
    $path
    /usr/texbin
    /usr/local/Cellar/gems/1.8/bin
    /usr/sbin
    $HOME/anaconda/bin
    $GOPATH/bin
  )
  export PATH

  # manuals (help files)
  manpath=(
    /usr/local/share/man
    /usr/share/man
    $manpath
  )
  export MANPATH

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
