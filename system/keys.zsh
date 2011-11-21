# Pipe my public key to my clipboard. Fuck you, pay me.
alias pubdsa="more ~/.ssh/id_dsa.public | pbcopy | echo '=> Public DSA key copied to pasteboard.'"#
alias pubrsa="more ~/.ssh/id_rsa.public | pbcopy | echo '=> Public RSA key copied to pasteboard.'"#

