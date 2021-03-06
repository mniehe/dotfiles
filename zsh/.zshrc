
####
# Add scripts folder to path
####
[[ ! -f ~/scripts ]] && export PATH=$PATH:$HOME/scripts

#####
# Load NVM
#####
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

#####
# Load Iterm2 Shell Integrations
#####
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#####
# Configure broot
# This only works after executing broot at least once and installing their link
#####
source "${HOME}/.config/broot/launcher/bash/br"

#####
# Load direnv hook
# Website: https://direnv.net/
#####
eval "$(direnv hook zsh)"

#####
# Load powerlevel10k plugin for ZSH
# Website: https://github.com/romkatv/powerlevel10k#installation
#####
source "${ZSH_CUSTOM}/themes/powerlevel10k/powerlevel10k.zsh-theme"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#####
# Load env files
#####
[[ ! -f ~/.zshenv ]] || source ~/.zshenv

#####
# Load aliases
#####
[[ ! -f ~/.zaliases ]] || source ~/.zaliases

#####
# Load laptop/company/org specific secrets
#####
[[ ! -f ~/.zsecrets ]] || source ~/.zsecrets

#####
# Init pyenv
#####
eval "$(pyenv init -)"
