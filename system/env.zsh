# set default editor

# editor preference:
#   1. MacVim/mvim
#   2. vim

# set editor based on what's found on the system
if type mvim >/dev/null 2>/dev/null ; then
  export EDITOR='mvim'
elif type vim >/dev/null 2>/dev/null ; then
  export EDITOR='vim'
fi
