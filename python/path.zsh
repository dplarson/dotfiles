# set python path

pythonpath=(
  /usr/local/lib/python2.7/site-packages
  $pythonpath
)
export PYTHONPATH

# remove non-unique items
typeset -U PYTHONPATH
