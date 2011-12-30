# Custom colors (r,g,b)
# -black:    0,0,0
# -red:      255,27,0
# -green:    166,227,45
# -blue:     38,162,255
# -yellow:   252,149,30
# -magenta:  250,37,115
# -cyan:     103,217,240
# -white:    242,242,242


# Color aliases
D=$'\e[37;40m'		# reset color (i.e. white)
PINK=$'\e[35;40m' 	# pink
GREEN=$'\e[32;40m' 	# green
ORANGE=$'\e[33;40m'	# orange (yellow)
BLUE=$'\e[34;40m' 	# blue
RED=$'\e[31;40m'	# red

# function to change prompt character depending whether inside a git branch
# 	-adapted from Steve Losh's zsh prompt (stevelosh.com)
function prompt_char {
	git branch >/dev/null 2>/dev/null && echo '±' && return
	echo '>'
}


git_branch() {
	echo $(/usr/bin/git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}


# prompt
export PROMPT=$'\n${PINK}%n ${D}at ${ORANGE}%m ${D}in ${BLUE}${PWD/#$HOME/~} ${D}$(git_prompt_info) \e[0m \n$(prompt_char) '
#export RPROMPT=''


# terminal window title
precmd() {
    title "zsh" "%m - zsh" "%55<...<%~"
}


# Git prompt (taken from oh-my-zsh)
ZSH_THEME_GIT_PROMPT_PREFIX="on %{${PINK}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{${D}%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{${GREEN}%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{${GREEN}%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
