function al () {
  local aliasName=$1
  shift
  echo "alias $aliasName='$*'" >> ~/.oh-my-zsh/custom/alias.zsh
  source ~/.zshrc
}

alias gs='git status'
alias cdp='cd ~/projects'
alias aliases='vim /Users/richardbell/.oh-my-zsh/custom/alias.zsh'
alias refreshShell='source ~/.zshrc'
alias rst='git add . && git reset --hard'
alias cdss='cd /Users/richardbell/projects/sublime_snippets'
alias release='npm run build && npm run deploy'
alias cdee='cd /Users/richardbell/projects/cpt-web-ee'
alias cdapi='cd /Users/richardbell/projects/cpt-webapi-ee'
alias fix_linting='node_modules/semistandard/bin/cmd.js --fix'
alias move='git mv'
alias runprod='cd ~/projects/cpt-web-ee && yarn build && sir /service-api:http://localhost:3000/service-api out -p 8083'
alias runee='cd ~/projects/cpt-web-ee && yarn dev'
alias runapi='cd /Users/richardbell/projects/cpt-webapi-ee && yarn services && yarn dev'
alias run_tests='yarn test `git diff --name-only | grep __tests__/` --watch'
