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
   
  # check if git repo
  git_status=$($git status 2>/dev/null | tail -n 1)

  if [[ ! $git_status == "" ]] ; then
    # current branch name
    git_branch=$($git symbolic-ref -q HEAD | sed -e 's|^refs/heads/||')
   
    # short sha1 
    git_sha1=$($git rev-parse --short HEAD 2>/dev/null)

    # git prompt (example: master@46a45f4)
    echo "%{$fg[blue]%}$git_branch%{$fg_bold[blue]%}@%{$fg_bold[red]%}$git_sha1"
  fi
}


# set left prompt
#
# should look similar to this:
#   user@computer-name
#   > git status
#
export PROMPT='
%{$fg_bold[yellow]%}%n%{$fg_bold[blue]%}@%{$fg_bold[yellow]%}%m%{$reset_color%}
%{$fg[green]%}> %{$reset_color%}'


# set right prompt with current directory and git info
#
#   if inside a git repo show branch and newest commit SHA1:
#     ~/.dotfiles/zsh master@1e1a62d
#
#   otherwise only show current directory:
#     ~/Documents
#
export RPROMPT='%{$fg_bold[yellow]%}%~ %{$reset_color%}$(git_prompt)%{$reset_color%}'


# set terminal window title
precmd() {
  title "zsh" "%m - zsh" "%55<...<%~"
}
