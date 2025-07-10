autoload -Uz compinit
compinit

[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

export PATH=/opt/homebrew/bin:$PATH
export RIPGREP_CONFIG_PATH=~/.rg.conf
export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"

ssh-add --apple-use-keychain

alias vi=nvim
alias k=kubectl
alias h=helm
alias t=terraform
alias vz="vi ~/.zshrc"
alias vs="vi ~/.config/starship.toml"
alias grep='grep --color'
alias c='clear'
alias ll="ls -la"
alias lg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias ls="eza --icons=always"
alias hssh='ssh $(aws ec2 describe-instances --query "Reservations[*].Instances[*].{InstanceId:InstanceId,Name:Tags[?Key=='"'"'Name'"'"']|[0].Value,Status:State.Name,Zone:Placement.AvailabilityZone,PublicIP:PublicIpAddress,PrivateIP:PrivateIpAddress}" --output table | fzf --color=16 --tac | cut -w -f 5)'
alias tree='eza --tree'
alias ..="cd .."
alias cl="clear && ls -la"

setenv () {
        local profile=$(aws-vault list --profiles | fzf --query="$*")
        if [[ -z "$profile" ]]
        then
                return
        fi
        aws-vault exec "$profile"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/nurulamin/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

eval "$(starship init zsh)"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nurulamin/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/nurulamin/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nurulamin/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/nurulamin/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

eval "$(zoxide init zsh)"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"