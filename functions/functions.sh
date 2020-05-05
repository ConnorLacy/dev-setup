#!/usr/bin/env zsh
GIT_DIR=$HOME/dev
SETUP_DIR=$GIT_DIR/personal/zsh

function antibodyBundle() {
  antibody bundle < $SETUP_DIR/zsh_plugins.txt > $SETUP_DIR/.zsh_plugins.sh
}