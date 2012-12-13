# Setup z.sh for OSX
if [ $(uname -s) = "Darwin" ] ; then

    # assumes z.sh installed using homebrew
    source $(brew --prefix)/etc/profile.d/z.sh

    # creates empty z datafile if it doesn't already exist
    if [ ! -f $HOME/.z ] ; then
        echo "z datafile (~/.z) does not exist."
        echo "Creating it now..."
        touch $HOME/.z
    fi

fi
