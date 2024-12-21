# My customzized zsh configuration

- as shell framework [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- as plugin manager [antidote](https://github.com/mattmc3/antidote)

## Installation

### 0. Install all dependencies

```bash
sudo pacman -S zsh git curl bat lsd fzf ttf-noto-nerd
```

### 1. Clone the repo into .config

```bash
git clone https://github.com/paulbknhs/zsh $HOME/.config/zsh
```

### 2. Create softlinks so zsh finds all necessary files

```bash
ln -sf ~/.config/zsh/zsh_plugins.txt ~/.zsh_plugins.txt
ln -sf ~/.config/zsh/rc.zsh ~/.zshrc
ln -sf ~/.config/zsh/.p10k.zsh ~/.p10k.zsh
```

### 4. Set zsh as your shell

> you will probably be asked to update oh-my-zsh

```bash
chsh $(whoami) && exec zsh
```
