#!/usr/bin/bash

################################################################################
############################### Install Programs ###############################
################################################################################
if [[ ! "$SHELL" == *"zsh" ]]
then
    printf '\033[32mInstalling Zsh (this may request your password)\x1b[0m\n'
    sudo dnf install zsh -y > /dev/null 2>&1
    sudo chsh -s $(which zsh) $USER > /dev/null 2>&1
else
    echo "Zsh is already installed."
fi

if [ ! -e /home/linuxbrew/.linuxbrew/bin/brew ];
then
    printf '\033[32mInstalling Homebrew\x1b[0m\n'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /dev/null 2>&1
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)" > /dev/null 2>&1
else
    echo "Homebrew is already installed."
fi

if [ ! -d ~/.zsh/pure ]
then
    printf '\033[32mInstalling Pure Prompt\x1b[0m\n'
    mkdir -p ~/.zsh
    git clone https://github.com/sindresorhus/pure.git ~/.zsh/pure > /dev/null 2>&1
else
    echo "Pure Prompt is already installed."
fi

if ! command -v nvim >/dev/null 2>&1
then
    printf '\033[32mInstalling NeoVIM\x1b[0m\n'
    brew install neovim -y > /dev/null 2>&1
else
    echo "NeoVIM is already installed."
fi

if ! command -v fastfetch >/dev/null 2>&1
then
    printf '\033[32mInstalling FastFetch\x1b[0m\n'
    brew install fastfetch -y > /dev/null 2>&1
else
    echo "FastFetch is already installed."
fi

if ! command -v eza >/dev/null 2>&1
then
    printf '\033[32mInstalling EZA\x1b[0m\n'
    brew install eza -y > /dev/null 2>&1
else
    echo "EZA is already installed."
fi

if ! command -v bat >/dev/null 2>&1
then
    printf '\033[32mInstalling bat\x1b[0m\n'
    brew install bat -y > /dev/null 2>&1
else
    echo "bat is already installed."
fi

################################################################################
############################# Copy Configurations ##############################
################################################################################
printf '\033[34mConfiguring NeoVIM\x1b[0m\n'
mkdir -p ~/.config/nvim
cp -r ./nvim ~/.config/

printf '\033[34mConfiguring FastFetch\x1b[0m\n'
mkdir -p ~/.config/fastfetch
cp -r ./fastfetch ~/.config/

printf '\033[34mConfiguring Zsh\x1b[0m\n'
cp -r ./.zshrc ~
zsh -c "source ~/.zshrc"
