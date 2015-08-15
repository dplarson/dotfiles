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

  # add if CUDA is installed
  if [ -d /usr/local/cuda ] ; then
    export PATH=$PATH:/usr/local/cuda/bin
  fi

  # add if CUDNN is installed (required for compiling Caffe)
  if [ -d /usr/local/cuda/cudnn ] ; then
    export DYLD_FALLBACK_LIBRARY_PATH=/usr/local/cuda/lib:$HOME/anaconda/lib:/usr/local/lib:/usr/lib
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
typeset -U DYLD_FALLBACK_LIBRARY_PATH
