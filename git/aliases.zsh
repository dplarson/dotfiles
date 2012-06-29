# Actions
alias gp='git push origin HEAD'
alias gd='git diff'
alias ga='git add'
alias gc='git commit'
alias gca='git commit -a'
alias gch='git checkout'
alias gb='git branch'
alias gm='git merge --no-ff' # keep commit from feature when merging

# Analysis
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias glog="git log --graph --pretty=format:'%Cred%h %Cblue%an%Creset: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
