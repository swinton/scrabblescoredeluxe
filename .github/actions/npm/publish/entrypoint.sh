#!/bin/sh

if [[ $NPM_AUTH_TOKEN ]]; then
  echo "//registry.npmjs.org/:_authToken=$NPM_AUTH_TOKEN" > $HOME/.npmrc
  export NPM_CONFIG_USERCONFIG=$HOME/.npmrc
  echo $NPM_CONFIG_USERCONFIG
fi

exec npm "$@"
