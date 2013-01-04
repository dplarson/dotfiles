# homebrew command aliases

# list all brews installed
alias brews='brew list -l'

# update brew formulas and list outdated after update
alias bru='brew update && echo "==> Outdated Formulae" && brew outdated'

# list outdated brews
alias bro='brew outdated'
