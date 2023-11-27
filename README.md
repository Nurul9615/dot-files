# dotfiles

# Setup Zsh

```
#Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z

# Nerd Fonts - Hack font (via git)
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh Hack

# Nerd Fonts - Hack font (via homebrew)
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```

## Other Tools

```
### Basic tools
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```