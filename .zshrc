# Source secrets
source .env

# General aliases
alias ll="ls -larth"

# Define config command, see https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'  

# PATH modifications
export PATH=$HOME/bin:$PATH
export PATH=$PATH:$HOME/.emacs.d/bin

# fzf setup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Finish by sourcing local-specific configs
source $HOME/.zshrc.local
