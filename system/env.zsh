# set default editor

# editor preference:
#   1. MacVim/mvim
#   2. vim


# check if command exists
exists () {
  type "$1" >/dev/null 2>/dev/null
}


# set editor based on what is installed
#if exists mvim ; then
#  export EDITOR='mvim'
if exists nvim; then
  export EDITOR='nvim'
  export GITEDITOR='nvim'
elif exists vim; then
  export EDITOR='vim'
  export GITEDITOR='vim'
fi
