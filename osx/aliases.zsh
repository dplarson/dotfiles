# set OSX-specific command aliases

if [ $(uname -s) = "Darwin" ] ; then

  # recursively delete `.DS_Store` files
  alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

  # kill processes
  alias killmenu='killall SystemUIServer' # top menubar
  alias killdock='killall Dock'           # Dock
  alias killfinder='killall Finder'       # Finder

  # empty the Trash
  alias emptytrash="rm -rfv ~/.Trash"

  # hide/show all desktop icons (useful when presenting)
  alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
  alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

fi
