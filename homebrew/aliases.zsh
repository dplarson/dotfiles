# homebrew command aliases


brew_check_outdated () {
  if [ "$(brew outdated)" = "" ]; then
    #echo "==> \033[1mOutdated Formulae \033[0m" && echo "Nothing to upgrade."
  else
    echo "==> \033[1mOutdated Formulae \033[0m" && brew outdated
  fi
}


# list all brews installed
alias brews='brew list'

# update brew formulas and list outdated after update
alias bru='brew update && brew_check_outdated'

# list outdated brews
alias bro='brew_check_outdated'
