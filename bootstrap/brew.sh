#!/bin/sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install pwgen
brew install wget
brew install mtr
# macOS base64 uses different cases for options than coreutils version.
# Use from brew instead:
brew install base64
