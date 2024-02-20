# zsh

padd() {
  echo "omz plugin load $1" >> $ZSH_CONFIG/plugins.zsh
  exec zsh
  echo "Added plugin $1 to $ZSH_CONFIG/plugins.zsh"
}

al() {
  clear
  echo -n "Create alias: " && read alias
  echo -n "To execute  : " && read command
  if [[ -z $alias || -z $command ]]; then
    echo "Failed to create empty alias."
  else
    echo "alias $alias='$command'" >> $ZSH_CONFIG/alias.zsh
    exec zsh
    echo "Created alias $alias in $ZSH_CONFIG/alias.zsh"
  fi
}
