# set terminal prompt

# color aliases
D=$'\e[0;37m'		   # reset color (i.e. white)
PINK=$'\e[0;35m' 	 # pink
GREEN=$'\e[0;32m'  # green
ORANGE=$'\e[0;33m' # orange (yellow)
BLUE=$'\e[0;34m' 	 # blue
RED=$'\e[0;31m'		 # red

# get current git branch
git_branch() {
	echo $(/usr/bin/git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

# get current directory
tilde_or_pwd() {
  echo $PWD | sed -e "s/\/Users\/$USER/~/"
}

# set left prompt
#
#   should look similar to this:
#     david@macbook
#     >
#
export PROMPT=$'\n%{\e[1;33m%}%n%{\e[1;34m%}@\e[1;33m%M%{\e[0m%}
%{\e[0;%(?.32.31)m%}>%{\e[0m%} '


# set right prompt with current directory and git info
#
#   if inside a git repo show branch and newest commit SHA1:
#     ~/.dotfiles/zsh master@1e1a62d
#
#   otherwise only show current directory:
#     ~/Documents
#
export RPROMPT=$'%{\e[1;33m%}$(tilde_or_pwd) $(git_prompt_info)%{\e[0m%}'


# set terminal window title
precmd() {
  title "zsh" "%m - zsh" "%55<...<%~"
}

# set git prompt settings (taken from oh-my-zsh)
ZSH_THEME_GIT_PROMPT_PREFIX="%{${BLUE}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{${D}%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{${GREEN}%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{${GREEN}%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{\e[1;34m%}@%{\e[1;31m%}"
