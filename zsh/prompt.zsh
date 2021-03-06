# set terminal prompt


# enable colors
autoload -U colors
colors

# enable command substitution and parameter expansion
setopt prompt_subst


if (( $+commands[git] )) ; then
  git=$commands[git]
else
  git=/usr/bin/git
fi


git_prompt() {
   
  git_status=$($git status 2>/dev/null | tail -n 1)

  # if in git repo, show current branch
  if [[ ! $git_status == "" ]] ; then
    git_branch=$($git symbolic-ref -q HEAD | sed -e 's|^refs/heads/||')
   
    echo "%{$reset_color%}[%{$fg[green]%}$git_branch%{$reset_color%}]"
  fi
}

# left prompt:
#   user@hostname
#   > ls
PROMPT=$'\n'
PROMPT+='%{$fg_bold[yellow]%}%n'  # user
PROMPT+='%{$fg_bold[blue]%}@'
PROMPT+='%{$fg_bold[yellow]%}%m'  # hostname
PROMPT+='%{$reset_color%}'
PROMPT+=$'\n'
PROMPT+='%{$fg[green]%}> '        # >
PROMPT+='%{$reset_color%}'        # reset color

# right prompt:
#   ~/current/directory [git branch]
RPROMPT='%{$reset_color%}%~ '   # current directory
RPROMPT+='$(git_prompt)'        # git info

export PROMPT RPROMPT
