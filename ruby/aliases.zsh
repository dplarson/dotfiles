# customize Ruby settings

# redirects ruby gem install directory
if [ $(uname -s) = "Darwin" ] ; then
  export GEM_HOME='$(brew --prefix)/Cellar/gems/1.8'
fi
