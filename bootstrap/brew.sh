#!/bin/sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install binwalk
brew install pwgen
brew install wget
brew install mtr
brew install nmap 
brew install watch
brew install htop
brew install p7zip
brew install unrar
brew install xz
brew install lzop
brew install squashfs
brew install john-jumbo
# macOS base64 uses different cases for options than coreutils version.
# Use from brew instead:
brew install base64
