# installs only the basics

# install oh_my_zsh
# TODO: check if exists before installing
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install homebrew
# TODO: check if exists before installing
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/sathya/.zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install --cask google-chrome iterm2 visual-studio-code
brew install autojump git-flow tig gnu-sed

gsed -i'' -e 's/plugins=(/plugins=(autojump ruby rails /g' ~/.zshrc

# setup git aliases
git config --global alias.co checkout &&
git config --global alias.br branch &&
git config --global alias.ci commit &&
git config --global alias.st status
