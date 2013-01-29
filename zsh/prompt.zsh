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


# get current git branch
git_current_branch () {
  $git symbolic-ref -q HEAD | sed -e 's|^refs/heads/||'
}

git_dirty () {
  st=$($git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]] ; then
    echo ""
  else
    if [[ "$st" =~ ^nothing ]] ; then
      echo "on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "on %{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
  ref=$($git symbolic-ref HEAD 2>/dev/null) || return
  # echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
  echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]] ; then
    echo " "
  else
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}


# set left prompt
#
#   should look similar to this:
#     user@computer-name
#     >
#
export PROMPT='
%{$fg_bold[yellow]%}%n%{$fg_bold[blue]%}@%{$fg_bold[yellow]%}%M%{$reset_color%}
%{$fg[green]%}> %{$reset_color%}'


# set right prompt with current directory and git info
#
#   if inside a git repo show branch and newest commit SHA1:
#     ~/.dotfiles/zsh master@1e1a62d
#
#   otherwise only show current directory:
#     ~/Documents
#
#export RPROMPT=$'%{\e[1;33m%}%~ $(git_prompt_info)%{\e[0m%}'
export RPROMPT='%{$fg_bold[yellow]%}%~ $(git_dirty)$(need_push)%{$reset_color%}'

# set terminal window title
precmd() {
  title "zsh" "%m - zsh" "%55<...<%~"
}
