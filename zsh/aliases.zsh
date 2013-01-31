# add general command aliases

# set ls defaults: colors and human-readable 
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    LS_COMMON='--color=auto -hF'
else
    LS_COMMON="-hBGF"
fi

# set ls to use $LS_COMMON
alias ls="command ls $LS_COMMON"

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
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias h='history'
alias du='du -kh'
alias df='df -kTh'
alias sizes='du -h -d1'
alias path='echo -e ${PATH//:/\\n}'
alias o='open .'

# misc
alias reload='. $HOME/.zshrc' # reload zsh settings

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# find processes
psg () { ps aux | grep --color=auto $1 }

# find by name
fn () { ls **/*$1* }
