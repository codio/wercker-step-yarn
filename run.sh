#!/bin/bash

YARN=yarn
#if ! hash yarn 2>/dev/null; then
echo "Installing yarn..."
curl -o- -L https://yarnpkg.com/install.sh | bash
#fi

PATH="$HOME/.yarn/bin:$PATH"
YARN="HOME=$WERCKER_CACHE_DIR $YARN"

YARN="$YARN $WERCKER_YARN_OPTIONS"

echo "$YARN"
eval $YARN