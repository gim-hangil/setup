#! /usr/bin/bash

# Copy configurations
cp -r ./nvim ~/.config/nvim
cp -r ./fastfetch ~/.config/fastfetch
cp -r ./.zshrc ~

# Install programs
if ! command -v brew >/dev/null 2>&1
then
    echo "Install Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

## Install Zsh
if [[ ! "$SHELL" == *"zsh" ]]
then
    brew install zsh
    sudo chsh -s zsh
fi

## Install NeoVIM
if ! command -v nvim >/dev/null 2>&1
then
    brew install neovim
fi

## Install fastfetch
if ! command -v fastfetch >/dev/null 2>&1
then
    brew install fastfetch
fi

# Load zshrc
zsh -c 'source ~/.zshrc'
