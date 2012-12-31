# add vundle setup commands

# Taken from oh-my-zsh
# Github: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/vundle/vundle.plugin.zsh

function vundle-init () {
  if [ ! -d ~/.vim/bundle/vundle/ ]
  then
    mkdir -p ~/.vim/bundle/vundle/
  fi

  if [ ! -d ~/.vim/bundle/vundle/.git/ ]
  then
    git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    echo "\n\tRead about vim configuration for vundle at https://github.com/gmarik/vundle\n"
  fi
}

function vundle () {
  vundle-init
  vim -c "execute \"BundleInstall\" | q | q"
}


function vundle-update () {
  vundle-init
  vim -c "execute \"BundleInstall!\" | q | q"
}
