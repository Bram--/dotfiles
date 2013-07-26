# Link dotfiles
for f in .*; do
  if [ -f "$f" ]; then
    if [ ! -L ~/$f ]; then
      ln -s ${PWD}/$f ${HOME}
    fi
  fi
done

# link zsh theme
zsh_folder="${HOME}/.oh-my-zsh/custom"
if [ -d "${zsh_folder}" ]; then
  if [ ! -L $zsh_folder/themes ]; then
    ln -s  ${PWD}/themes $zsh_folder
  fi
else
  echo "ZSH not installed (Looking for: ${ZSHFOLDER})"
fi
