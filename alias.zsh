function al () {
  local aliasName=$1
  shift
  echo "alias $aliasName='$*'" >> ~/.oh-my-zsh/custom/alias.zsh
  source ~/.zshrc
}

alias gs='git status'
alias cdp='cd ~/projects'
alias aliases='vim ~/.oh-my-zsh/custom/alias.zsh'
alias refreshShell='source ~/.zshrc'
alias rst='git add . && git reset --hard'
alias move='git mv'

