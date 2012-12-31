# add git command aliases

# push 
alias gp='git push origin HEAD'

# diff
alias gd='git diff'

# add
alias ga='git add'

# commit
alias gc='git commit'
alias gca='git commit -a'

# branches
alias gb='git branch'
alias gba='git branch -a'

# merge
alias gm='git merge --no-ff' # keep commit from feature when merging

# status
alias gs='git status -sb' 
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gwtf='git-wtf'

# log
alias glog="git log --graph --pretty=format:'%Cred%h %Cblue%an%Creset: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# analysis
alias g#='git shortlog -sn'         # view number of commits per user
alias gbig='git-big-object-report'  # list largest files in repo
