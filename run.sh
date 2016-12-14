#!/bin/bash

YARN=yarn

if ! hash yarn 2>/dev/null; then
  echo "Installing yarn..."
  npm install -g --loglevel warn yarn
fi

YARN="HOME=$WERCKER_CACHE_DIR $YARN"

YARN="$YARN $WERCKER_YARN_OPTIONS"

echo "$YARN"
eval $YARN