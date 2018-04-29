# Set up zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

curl -o ~/.oh-my-zsh/themes/twoLine.zsh-theme https://raw.githubusercontent.com/richardtbell/zsh-twoLine-theme/master/twoLine.zsh-theme 
curl -o ~/.oh-my-zsh/custom/alias.zsh https://raw.githubusercontent.com/richardtbell/dotfiles/master/alias.zsh 
sed -i -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="twoLine"/g' ~/.zshrc
source ~/.zshrc
```
