#!/bin/bash

YARN="$HOME/.yarn/bin/yarn"
#if ! hash yarn 2>/dev/null; then
echo "Installing yarn..."
curl -o- -L https://yarnpkg.com/install.sh | bash
#fi

YARN="HOME=$WERCKER_CACHE_DIR $YARN"

YARN="$YARN $WERCKER_YARN_OPTIONS"

echo "$YARN"
eval $YARN