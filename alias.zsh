addAlias() {
  echo "alias $1" >> ~/.oh-my-zsh/custom/alias.zsh
  source ~/.zshrc
}

alias cdp='cd ~/projects'
alias edit_alias='vim ~/.oh-my-zsh/custom/alias.zsh'
alias gs='git status'
alias cdpp='cd ~/projects/personal'
alias cdr='cd ~/projects/personal/react_learning'
