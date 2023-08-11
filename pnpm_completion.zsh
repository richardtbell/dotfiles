# This has been tested and used on Ubuntu
# ~/.oh-my-zsh/custom/pnpm_completion.zsh

# You will need source this file from .zshrc
# source ~/.oh-my-zsh/custom/pnpm_completion.zsh

_pnpm_completion() {
  local -a options
  local output
  
  # Extract the available npm scripts using node and process the output
  output=$(node -e "const pkg = require('./package.json'); if (pkg.scripts) console.log(Object.keys(pkg.scripts).join('\n'));")
  
  # Use a loop to populate the 'options' array from the extracted output
  while IFS= read -r line; do
    # Replace colons with backslashes and colons (escaping)
    line=${line//:/\\:}
    options+=("$line")
  done <<< "$output"
  
  _describe 'pnpm-scripts' options
}

# Set the completion function for 'pnpm' command
compdef _pnpm_completion pnpm
