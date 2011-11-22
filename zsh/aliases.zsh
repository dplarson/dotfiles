# Always use color outputs and human-readable format for 'ls'
# enable color support of ls and also add handy aliases·
if [ -x /usr/bin/dircolors ];
then
    eval "`dircolors -b`"
    LS_COMMON='--color=auto'
else
    LS_COMMON="-hBG"
fi
# set ls to use $LS_COMMON
alias ls="command ls $LS_COMMON"

# ls 
alias l='ls -CF' 	    # 
alias ll='ls -l'	    # list in lines, sorted alphabetically
alias lt='ls -tr'	    # list newest files at the bottom
alias llt='ls -ltr'	# list in lines, newest files at bottom
alias lk='ls -lSr'	#
alias lla='ls -al'	    # list all in lines
alias l.='ls -ld .*'    # list dot files

# Easier navigation
alias ..='cd ..'
alias ...='cd ..; cd ..'

# File functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias h='history'
alias du='du -kh'
alias df='df -kTh'
alias path='echo -e ${PATH//:/\\n}'
alias o='open .'

# Misc
alias reload='source ~/.zshrc'                                  # reload zsh settings
alias showcal='cal | sed "s/.*/ & /;s/ $(date +%e) / [] /"'     # show calendar

# Brew
alias brews='brew list -l'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
