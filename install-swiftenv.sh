#!/usr/bin/env bash

git clone --depth 1 https://github.com/kylef/swiftenv.git ~/.swiftenv
export SWIFTENV_ROOT="$HOME/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$SWIFTENV_ROOT/shims:$PATH"

if [ -f ".swift-version" ] || [ -n "$SWIFT_VERSION" ]; then
  swiftenv install
else
  swiftenv rehash
fi
