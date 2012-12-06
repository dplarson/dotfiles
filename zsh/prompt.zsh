
# Color aliases
D=$'\e[0;37m'		# reset color (i.e. white)
PINK=$'\e[0;35m' 	# pink
GREEN=$'\e[0;32m' 	# green
ORANGE=$'\e[0;33m'	# orange (yellow)
BLUE=$'\e[0;34m' 	# blue
RED=$'\e[0;31m'		# red


git_branch() {
	echo $(/usr/bin/git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

# get current directory
tilde_or_pwd() {
  echo $PWD | sed -e "s/\/Users\/$USER/~/"
}

# left prompt with host info
export PROMPT=$'\n%{\e[1;33m%}%n%{\e[1;34m%}@\e[1;33m%M%{\e[0m%}
%{\e[0;%(?.32.31)m%}>%{\e[0m%} '

# right prompt with current directory and git branch (if in repo)
export RPROMPT=$'%{\e[1;33m%}$(tilde_or_pwd) $(git_prompt_info)%{\e[0m%}'

# terminal window title
precmd() {
    title "zsh" "%m - zsh" "%55<...<%~"
}


# Git prompt (taken from oh-my-zsh)
ZSH_THEME_GIT_PROMPT_PREFIX="%{${BLUE}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{${D}%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{${GREEN}%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{${GREEN}%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{\e[1;34m%}@%{\e[1;31m%}"
