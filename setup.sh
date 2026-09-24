#!/usr/bin/bash

################################################################################
############################# Copy Configurations ##############################
################################################################################
echo "Copying NeoVIM config to ~/.config/nvim"
mkdir -p ~/.config/nvim
cp -r ./nvim ~/.config/nvim

echo "Copying FastFetch config to ~/.config/fastfetch"
mkdir -p ~/.config/fastfetch
cp -r ./fastfetch ~/.config/fastfetch

echo "Copying Zsh config to ~/.zshrc"
cp -r ./.zshrc ~

################################################################################
############################### Install Programs ###############################
################################################################################
if [[ ! "$SHELL" == *"zsh" ]]
then
    echo "Installing Zsh (this may request your password)"
    sudo dnf install zsh -y > /dev/null 2>&1
    sudo chsh -s $(which zsh) $USER
else
    echo "Zsh is already installed."
fi

if ! command -v brew >/dev/null 2>&1
then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
else
    echo "Homebrew is already installed."
fi

if [ ! -d ~/.zsh/pure ]
then
    echo "Installing Pure Prompt"
    mkdir -p ~/.zsh
    git clone https://github.com/sindresorhus/pure.git ~/.zsh/pure
else
    echo "Pure Prompt is already installed."
fi

if ! command -v nvim >/dev/null 2>&1
then
    echo "Installing NeoVIM"
    brew install neovim
else
    echo "NeoVIM is already installed."
fi

if ! command -v fastfetch >/dev/null 2>&1
then
    echo "Installing FastFetch"
    brew install fastfetch
else
    echo "FastFetch is already installed."
fi

# Load zshrc
echo "Loading Zsh config"
zsh -c "source ~/.zshrc"
