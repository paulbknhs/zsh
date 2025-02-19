# ZSH_THEME="agnoster" # set by `omz`

# Theme configuration for powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="/home/paul/.local/bin:/home/paul/.virtualenvs/:/home/paul/.local/bin/:home/paul/.config/awesome/rofi:$PATH"
export ZSH_CONFIG=$HOME/.config/zsh
export ZSH=$ZSH_CONFIG/oh-my-zsh
#export WINIT_X11_SCALE_FACTOR=1
export ZDOTDIR="$ZSH_CONFIG/antidote"
source "$ZSH/oh-my-zsh.sh"
source "$ZSH_CONFIG/plugins.zsh"
source "$ZSH_CONFIG/alias.zsh"
source "$ZSH_CONFIG/functions.zsh"


## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/paul/.dart-cli-completion/zsh-config.zsh ]] && . /home/paul/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
eval "$(zoxide init zsh)"
