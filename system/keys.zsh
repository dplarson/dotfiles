# pipe my public key to my clipboard

# DSA key
alias pubdsa="more ~/.ssh/id_dsa.public | pbcopy | echo '=> Public DSA key copied to pasteboard.'"

# RSA key
alias pubrsa="more ~/.ssh/id_rsa.public | pbcopy | echo '=> Public RSA key copied to pasteboard.'"
