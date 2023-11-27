if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -Uz compinit
compinit

export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-z zsh-autosuggestions zsh-syntax-highlighting)

source <(kubectl completion zsh)

source $ZSH/oh-my-zsh.sh

export PATH=/Users/nurul.amin/homebrew/opt/tmux/bin:$PATH
export PATH=/Users/nurul.amin/homebrew/bin:$PATH
export PATH=/Users/nurul.amin/.config/tmux/nvim-macos/bin:$PATH

alias vi=nvim
alias k=kubectl
alias h=helm
alias t=terraform

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
