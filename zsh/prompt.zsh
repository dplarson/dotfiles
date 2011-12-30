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

git_branch() {
	echo $(/usr/bin/git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

# prompt
export PROMPT=$'\n\e[1;33m%n\e[0m at \e[1;35m%m\e[0m in \e[0;34m${PWD/#$HOME/~}\e[0m$(git_prompt_info) \e[0m \n$(prompt_char) '
#export RPROMPT=''

# terminal window title
precmd() {
    title "zsh" "%m - zsh" "%55<...<%~"
}

# Git prompt (taken from oh-my-zsh)
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{\e[1;35m%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{\e[0m%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{\e[1;32m%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{\e[1;32m%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
