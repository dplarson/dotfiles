# pipe my public key to my clipboard

if [ "$(uname)" = "Darwin" ] ; then
  alias pubrsa="more ~/.ssh/id_rsa.public | pbcopy | echo '=> Public RSA key copied to clipboard'"
elif [ "$(uname)" = "Linux" ] ; then
  alias pubrsa="xclip -sel clip < ~/.ssh/id_rsa.pub | echo '=> Public RSA key copied to clipboard.'"
fi
