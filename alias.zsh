function al () {
  local aliasName=$1
  shift
  echo "alias $aliasName='$*'" >> ~/.oh-my-zsh/custom/alias.zsh
  source ~/.zshrc
}

function setUpstream () {
  local current_branch=$(git symbolic-ref --short HEAD)
  git push --set-upstream origin "$current_branch"
}

alias gs='git status'
alias cdp='cd ~/projects'
alias aliases='vim ~/.oh-my-zsh/custom/alias.zsh'
alias refreshShell='source ~/.zshrc'
alias rst='git add . && git reset --hard'
alias move='git mv'
alias tidy='git branch --merged | egrep -v "(^\*|master|main|dev)" | xargs git branch -d'
alias drm='docker rm -f $(docker ps -a -q)'
alias dps='docker ps --format "table {{.Image}}\t{{.Names}}\t{{.Command}}\t{{.Ports}}" --no-trunc'
alias scripts="cat package.json | jq '.scripts'"
