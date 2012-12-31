#!/bin/sh
# customize OSX defaults

# Inspired by https://github.com/mathiasbynens/dotfiles/blob/master/.osx

# Display login window as: Name and password
/usr/bin/sudo /usr/bin/defaults write /Library/Preferences/com.apple.loginwindow 'SHOWFULLNAME' -bool true

# Disable press-and-hold for keys in favor of key repeat
#defaults write -g ApplePressAndHoldEnabled -bool false

# Always open everything in Finder's column view.
defaults write com.apple.Finder FXPreferredViewStyle clmv 

# Show the ~/Library folder
chflags nohidden ~/Library

# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool false
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool false

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Disable Safari’s thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true

# Disable all the other Ping stuff in iTunes
defaults write com.apple.iTunes disablePing -bool true

# Kill affected applications
for app in Safari Finder Dock; do killall "$app"; done
