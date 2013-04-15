# set default editor

# editor preference:
#   1. MacVim/mvim
#   2. vim


# check if command exists
exists () {
  type "$1" >/dev/null 2>/dev/null
}


# set editor based on what is installed
if exists mvim ; then
  export EDITOR='mvim'
elif exists vim ; then
  export EDITOR='vim'
fi

export GIT_EDITOR='vim'
