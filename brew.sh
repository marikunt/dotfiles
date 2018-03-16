#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
#brew install homebrew/php/php56 --with-gmp

# Node Version Manager
brew install nvm
nvm install 5
nvm install 6
nvm install 7
nvm install 8
nvm install stable
nvm use 6

# Yarn
brew install yarn

# Python & Pygments for colored cat
brew install python
pip install Pygments

# Brew Cask & Cask Versions
brew tap caskroom/cask
brew tap caskroom/versions

# Sublime Text, Visual Studio Code, Tower, Transmit, Tableplus, Spectacle, Dash, whatsapp, caffeine
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install tower
brew cask install transmit
brew cask install tableplus
brew cask install spectacle
brew cask install dash
brew cask install whatsapp
brew cask install caffeine

# Virtual box & vagrant
brew cask install virtualbox
brew cask install vagrant

# Latest browsers
brew cask install google-chrome
brew cask install caskroom/versions/google-chrome-canary
brew cask install firefox
brew cask install opera

# Install fonts
brew cask install caskroom/fonts/font-hack

# Install Spotify
brew cask install spotify

# Install Java
brew cask install java

# Remove outdated versions from the cellar.
brew cleanup