# Toggle wifi 
alias off='/usr/sbin/networksetup -setairportpower en1 off'     # wifi off
alias on='/usr/sbin/networksetup -setairportpower en1 on'       # wifi on

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
