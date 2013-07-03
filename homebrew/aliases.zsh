# homebrew command aliases

# disable beer emoji
export HOMEBREW_NO_EMOJI=1

# check if any pkgs are outdated
brew_check_outdated () {
  if [ ! "$(brew outdated)" = "" ] ; then
    echo "==> \033[1mOutdated Formulae \033[0m" && brew outdated
  fi
}

# list all brews installed
alias brews='brew list'

# update brew formulas and list outdated after update
alias bru='brew update && brew_check_outdated'

# list outdated brews
alias bro='brew_check_outdated'

# list compact homebrew log
alias brl="brew log --graph --pretty=format:'%Cred%h %Cblue%an%Creset: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
