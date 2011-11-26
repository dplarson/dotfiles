# Custom colors (r,g,b)
# -black:    0,0,0
# -red:      255,27,0
# -green:    72,235,0
# -blue:     38,162,255
# -yellow:   231,238,0
# -magenta:  255,0,255
# -cyan:     0,146,209
# -white:    242,242,242


# function to change prompt character depending whether inside a git branch
# 	-adapted from Steve Losh's zsh prompt (stevelosh.com)
function prompt_char {
	git branch >/dev/null 2>/dev/null && echo '±' && return
	echo '>'
}

# prompt
export PROMPT=$'\n\e[1;33m%n\e[0m at \e[1;35m%m\e[0m in \e[0;34m${PWD/#$HOME/~}\e[0m \n$(prompt_char) '
#export RPROMPT=''

# terminal window title
precmd() {
    title "zsh" "%m - zsh" "%55<...<%~"
}
