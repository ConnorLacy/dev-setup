#!/bin/zsh
currentPath=$(dirname "$0")
export PATH=$HOME/.nodebrew/current/bin:$PATH

source $currentPath/functions/functions.sh
source $currentPath/.zsh_plugins.sh

# Theme
ZSH_THEME="bullet-train"

BULLETTRAIN_PROMPT_ORDER=(
  dir
  git
  nvm
)
BULLETTRAIN_DIR_FG="black"
BULLETTRAIN_NVM_FG="black"

# Fix for autosuggest when copy-pasting, it prints super slow on long
# Buffers (pastes)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=15
ZSH_AUTOSUGGEST_USE_ASYNC=1