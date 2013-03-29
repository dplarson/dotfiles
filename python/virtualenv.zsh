# setup virtualenv

# settings
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_HOOK_DIR=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_LOG_DIR=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

# activate virtualenv
source /usr/local/share/python/virtualenvwrapper.sh

# aliases
alias v='workon'
alias v.deactivate='deactivate'
alias v.mk='mkvirtualenv --no-site-packages'
alias v.rm='rmvirtualenv'
alias v.switch='workon'
alias v.cdsitepackages='cdsitepackages'
alias v.cd='cdvirtualenv'
alias v.ls='lssitepackages'
