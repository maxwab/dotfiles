
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Aliases
alias ll="ls -larth"
export PATH=$HOME/bin:$PATH
export PATH=/Applications/MacPorts/Emacs.app/Contents/MacOS:$HOME/.emacs.d/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias config='/usr/bin/git --git-dir=/Users/mwabartha/.cfg/ --work-tree=/Users/mwabartha'
