## My zsh configuration

feat. [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) and [antidote](https://github.com/mattmc3/antidote)

### Installation

#### 0. Install all dependencies

```bash
sudo pacman -S zsh git curl bat broot lsd fzf ttf-noto-nerd
```

#### 1. Clone the repo into .config

```bash
git clone https://github.com/paulbknhs/zsh $HOME/.config/zsh
```

#### 2. Create links for all important files 

```bash
ln -sf ~/.config/zsh/zsh_plugins.txt ~/.zsh_plugins.txt
ln -sf ~/.config/zsh/rc.zsh ~/.zshrc
```

#### 3. Initialize broot and other plugins

```bash
$ broot
```

#### 4. Reload or start the zsh instance

```bash
exec zsh
```
