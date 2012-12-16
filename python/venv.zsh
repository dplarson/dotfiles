# autoenv

# source virtualenvwrapper and autoenv
if [ $(uname -s) = "Darwin" ] ; then
    . /usr/local/share/python/virtualenvwrapper.sh
    . /usr/local/opt/autoenv/activate.sh
fi

# command to create new env for autoenv
use_env () {
    typeset venv
    venv="$1"
    if [[ `basename "${VIRTUAL_ENV:t}"` != "$venv" ]]; then
        if workon | grep $venv > /dev/null; then
            workon "$venv"
        else
            echo -n "Create virtualenv $venv now? (Yn) "
            read answer
            if [[ "$answer" == "Y" ]]; then
                mkvirtualenv "$venv"
            fi
        fi
    fi
}
