# homebrew command aliases

# list all brews installed
alias brews='brew list'

# update brew formulas and list outdated after update
alias bru='brew update && echo "==> \033[1mOutdated Formulae \033[0m" && brew outdated'

# list outdated brews
alias bro='echo "==> \033[1mOutdated Formulae \033[0m" && brew outdated'
