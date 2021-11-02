# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export ZSH="/Users/unstoppable/.oh-my-zsh"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

plugins=(git vi-mode zsh-autosuggestions zsh-syntax-highlighting)

eval $(thefuck --alias)
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias curlconfig="vim ~/.curlrc"
alias pc="proxychains4"
alias myip="ifconfig | grep inet | grep -v inet6 | grep -v 127"
alias vim="nvim"
alias cls="clear"
alias gacp="~/Documents/Dotfiles/git_add_commit_push.sh"

# press tab to show autocomplete options
setopt autolist
unsetopt menucomplete

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $ZSH/oh-my-zsh.sh
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

