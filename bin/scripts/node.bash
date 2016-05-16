#!/usr/bin/env bash

# node
# --------

# sets up node environment

PACKAGES=(
    csslint
    gulp
    htmlhint
    jshint
    nodemon
    pm2
    typescript
)

log -v "setting up node..."

brew_install nvm
mkdir -p ~/.nvm
export NVM_DIR=~/.nvm

# shellcheck disable=SC1090
source "$(brew --prefix nvm)/nvm.sh"

nvm install node
nvm alias default node

for p in "${PACKAGES[@]}"; do
    npm install -g "$p"
done