#!/usr/bin/env bash

#####
# ZSH setup
#####
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git zsh/themes/powerlevel10k
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git zsh/plugins/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions zsh/plugins/zsh-autosuggestions
# curl -o zsh/plugins/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
# curl -o zsh/plugins/_git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh

#####
# Brew install and setup
# Website: https://brew.sh/
#####
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew doctor

#####
# NVM install
# Website: https://github.com/nvm-sh/nvm#installing-and-updating
#####
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

#####
# Individual Tool Install
# Use the tools installed in the above steps to install required tools
#####
brew install bat broot jq fzf direnv pyenv openssh
brew cask install iterm2

#####
# Link config files to the home directaory
#####
ln -si $(pwd)/zsh/.zshrc $HOME/.zshrc && \
  ln -si $(pwd)/zsh/.zshenv $HOME/.zshenv && \
  ln -si $(pwd)/zsh/.zaliases $HOME/.zaliases && \
  ln -si $(pwd)/zsh/.p10k.zsh $HOME/.p10k.zsh && \
  ln -si $(pwd)/macos/scripts $HOME/scripts && \
  ln -si $(pwd)/kitty $HOME/.config/kitty