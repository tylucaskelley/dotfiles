#!/usr/bin/env bash

# node
#
# sets up node environment
# --------

PACKAGES=(
    csslint
    eslint
    eslint-config-airbnb
    eslint-plugin-import
    eslint-plugin-jsx-a11y
    eslint-plugin-react
    firebase-tools
    gulp
    htmlhint
    mocha
    node-gyp
    nodemon
    nsp
    pm2
    stylelint
    tslint
    typescript
)

log -v "setting up node..."

brew_install nvm
mkdir -p ~/.nvm
export NVM_DIR="$HOME/.nvm"

# shellcheck disable=SC1090
source "$(brew --prefix nvm)/nvm.sh"

# install latest LTS version
nvm install --lts
nvm alias default lts/*

for p in "${PACKAGES[@]}"; do
    npm install -g "$p"
done
