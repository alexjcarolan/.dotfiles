#!/bin/zsh

# configure zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install apps
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask arc
brew install --cask rectangle
brew install --cask keepingyouawake

# install tools
brew install font-roboto-mono-nerd-font
brew install starship
brew install bat
brew install eza
brew install erdtree
brew install bottom
brew install onefetch
brew install macchina
brew install lazydocker
brew install typst
brew install stow

# sync dir structure
rsync -a --include '*/' --exclude '*' "." "../"

# symlink dotfiles
stow .