# Setup

This is personal setup for my dev env. It only works on Fedora and its
derivatives.

This scripts are not written for anyone else to use, but feel free to
use it if you need. Also, issue or PR are welcome if you want to
improve it.

## What's Inside

The `setup.sh` script is consisted of two steps.

1. Install programs that I use.
2. Configure the programs.

The program list is as follows:

* [`zsh`](https://github.com/zsh-users/zsh) - Shell
  * `zsh` is installed with `dnf` package manager.
* [`pure`](https://github.com/sindresorhus/pure) - ZSH Prompt
  * `pure` is cloned with `git` and placed in `~/.zsh/pure`.
* [`brew`](https://github.com/Homebrew/brew) - Package Manager
  * `brew` is installed with the official script from Homebrew.
  * Rest of the programs are installed with `brew` package manager.
* [`neovim`](https://github.com/neovim/neovim) - Text Editor
* [`fastfetch`](https://github.com/fastfetch-cli/fastfetch) - System
  Information Tool
* [`eza`](https://github.com/eza-community/eza) - Replacement for `ls`
* [`bat`](https://github.com/sharkdp/bat) - Replacement for `cat`
