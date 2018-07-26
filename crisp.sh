# installs only the basics

# install homebrew first
# TODO: check if exists before installing
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask install google-chrome iterm2 visual-studio-code &&
brew install autojump git-flow tig

# install oh_my_zsh
# TODO: check if exists before installing
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# setup git aliases
git config --global alias.co checkout &&
git config --global alias.br branch &&
git config --global alias.ci commit &&
git config --global alias.st status

# TODO: auto-add autojump to oh_my_zsh plugins
# TODO: auto-add homebrew path fix in .zshrc
