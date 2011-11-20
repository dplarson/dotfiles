# Custom colors
# -black:    0,0,0
# -red:      255,27,0
# -green:    72,235,0
# -blue:     38,162,255
# -yellow:   231,238,0
# -magenta:  255,0,255
# -cyan:     0,146,209
# -white:    242,242,242

#   -color for Terminal theme "IR_Black"
export PROMPT=$'\n\e[1;33m%n\e[0m at \e[1;35m%m\e[0m in \e[0;34m${PWD/#$HOME/~}\e[0m \n> '
#export RPROMPT=''

# Title
precmd() {
    title "zsh" "%m - zsh" "%55<...<%~"
}
