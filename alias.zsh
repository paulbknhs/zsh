# zsh
alias ez="exec zsh"
alias zc="nvim $HOME/.config/zsh/"

# colorizing basic commands
alias yay="yay --color=always --noconfirm"
alias yey="yay --color=always"
alias get="sudo pacman --color=always --noconfirm -S"
alias getup="sudo pacman --color=always --noconfirm -Syu"
alias ls="ls --color=auto"
alias grep="rg --color=auto"
alias diff="diff --color=auto"
alias make="make -B | sed -e 's/\\(.*\\[.*\\]\\)/\\o033[34m\\1\\o033[0m/'"
alias gcc="gcc -fdiagnostics-color=auto"
alias git="git -c color.ui=auto"
alias sys="systemctl --quiet --full"
alias dmesg="dmesg --color=auto"

# basic convenience
alias ls="lsd --color=always --icon=always --group-directories-first"
alias ll="lsd --color=always --git --long --header --icon=always --group-directories-first"
alias la="lsd --color=always --git --long --header --icon=always --group-directories-first --almost-all"
alias cat="bat"
alias :q='exit'
alias gacp='git add . && git commit && git push'
alias ga='git add .'
alias gc='git commit'
alias gp='git push --all'
alias pacman='sudo pacman'
alias unget='sudo pacman -R'
alias ks='kitten ssh -i $HOME/.ssh/id_ed25519'
alias :wq='exit'
# alias nvim='neovide --maximized'
alias sis='sudo systemctl'
alias ip='ip --color=always'
alias dstop='sudo docker stop'
alias drm='sudo docker rm'
alias dls='sudo docker ps'
alias drun='sudo docker run'
alias ch='cheat -c'
alias t='tmux'
alias gitc='git clone'
alias ic='kitten icat'
alias tr='trash'
alias status='sudo systemctl status'
alias senable='sudo systemctl enable'
alias sdisable='sudo systemctl disable'
alias sstop='sudo systemctl stop'
alias sstart='sudo systemctl start'
alias nv='nvim'
alias snv='sudo nvim'
alias kssh='kitten ssh'
