# set path

# OSX-specific settings
if [ $(uname -s) = "Darwin" ] ; then

  export GOPATH=$HOME/projects/go

  # system path
  path=(
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

  # if CUDA is installed, set the DYLD_LIBRARY_PATH (require to
  # compile cuDNN code)
  if [ -d /usr/local/cuda ] ; then
    export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH
    export PATH=$PATH:/usr/local/cuda/bin
  fi

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
typeset -U DYLD_LIBRARY_PATH
