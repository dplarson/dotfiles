# add general command aliases

# set ls defaults: colors and human-readable
if (( $+commands[dircolors] )) ; then
  eval `dircolors $HOME/.dircolors`
  alias ls="command ls --color=auto -h"
elif (( $+commands[gdircolors] )) ; then
  eval `gdircolors $HOME/.dircolors`
  alias ls="command gls --color=auto -h"
else
  export LSCOLORS="exfxcxdxbxegedabagacad"
  export CLICOLOR=true
  alias ls="command ls -hBGF"
fi

# ls 
alias l='ls -ltr' 	 # list in lines, sorted by date
alias ll='ls -l'	   # list in lines, sorted alphabetically
alias lt='ls -tr'	   # list newest files at the bottom
alias llt='ls -ltr'  # list in lines, sorted by date
alias lk='ls -lSr'	 #
alias lla='ls -al'	 # list all in lines
alias l.='ls -ld .*' # list dot files

# cd
alias ..='cd ..'
alias ...='cd ..; cd ..'

# file functions
alias mkdir='mkdir -p'
alias h='history'
alias path='echo -e ${PATH//:/\\n}'
alias o='open .'

# calculate directory size
alias du='du -kh'
alias du1='du -kh -d 1'
alias du2='du -kh -d 2'

# misc
alias reload='. $HOME/.zshrc' # reload zsh settings

# IP addresses
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
