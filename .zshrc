export PATH=$PATH:/home/hangil/.local/bin

# Use brew package manager
export PATH="/home/linuxbrew/.linuxbrew/bin/:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

# Use Pure Prompt
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# Case insensitive autocompletion
autoload -U compinit && compinit
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"

# Use dracula theme for eza
export EZA_COLORS="\
uu=36:\
uR=31:\
un=35:\
gu=37:\
da=2;34:\
ur=34:\
uw=95:\
ux=36:\
ue=36:\
gr=34:\
gw=35:\
gx=36:\
tr=34:\
tw=35:\
tx=36:\
xx=95:"

# Use NeoVIM as default editor
export EDITOR=nvim

# Aliases
alias vi=nvim
alias vim=nvim
alias ff=fastfetch
alias cat='bat --theme Dracula'
alias ls='eza -laX --icons --color=always'
alias binaryninja='~/Desktop/BinaryNinja/binaryninja/binaryninja'
