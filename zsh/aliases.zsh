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

# file functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias h='history'
alias du='du -kh'
alias df='df -kTh'
alias path='echo -e ${PATH//:/\\n}'
alias o='open .'

# misc
alias reload='source ~/.zshrc'                                  # reload zsh settings
alias off='/usr/sbin/networksetup -setairportpower en1 off'     # wifi off
alias on='/usr/sbin/networksetup -setairportpower en1 on'       # wifi on
alias showcal='cal | sed "s/.*/ & /;s/ $(date +%e) / [] /"'     # show calendar

# Brew
alias brews='brew list -l'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# Kill processes
alias killmenu='killall SystemUIServer' 		# top menubar
alias killdock='killall Dock'                   # Dock
alias killfinder='killall Finder'               # Finder

# Empty the Trash
alias emptytrash="rm -rfv ~/.Trash"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
