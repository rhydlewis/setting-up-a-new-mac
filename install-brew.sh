#!/bin/bash
#
# Setup Mac w/Homebrew, Casks and a bundled brewfile
#

# Homebrew not installed?
if ! which brew > /dev/null; then
     /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# Update brew
brew update

# Install everything in Brewfile
brew bundle
