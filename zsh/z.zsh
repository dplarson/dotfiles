# assumes z.sh installed using homebrew
source $(brew --prefix)/etc/profile.d/z.sh

# required to build-up z datafile
function precmd () {
  z --add "$(pwd -P)"
}
