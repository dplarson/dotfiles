# setup z.sh

# OSX-specific setup
if [ $(uname -s) = "Darwin" ] ; then

    # assumes z.sh installed using homebrew
    . $(brew --prefix)/etc/profile.d/z.sh

    # creates empty z datafile if it doesn't already exist
    if [ ! -f $HOME/.z ] ; then
      echo "z datafile (~/.z) does not exist."
      echo "Creating ~/.z now..."
      touch $HOME/.z
    fi

fi
