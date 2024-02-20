# Theme configuration for powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source "/home/paul/.config/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export ZSH_CONFIG=$HOME/.config/zsh
export ZSH=$ZSH_CONFIG/oh-my-zsh
# export ZDOTDIR="$ZSH_CONFIG/antidote"
source "$ZSH/oh-my-zsh.sh"
source "$ZSH_CONFIG/plugins.zsh"
source "$ZSH_CONFIG/alias.zsh"
source "$ZSH_CONFIG/functions.zsh"
