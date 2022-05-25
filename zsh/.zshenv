#####
# Brew config
####
export HOMEBREW_NO_ENV_HINTS=1

export NODE_ENV=dev
export DEV_DIR=$HOME/dev/src
export ZSH_CUSTOM=$DEV_DIR/github.com/mniehe/dotfiles/zsh

#####
# Golang Config
# Skip proxying through google CDN
#####
export GOPROXY=direct