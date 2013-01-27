# setup fasd (fuzzy finder) 

# start fasd
if (( $+commands[fasd] )) ; then
  eval "$(fasd --init auto)"
fi
