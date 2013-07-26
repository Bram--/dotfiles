# Link dotfiles
cd ./files
for f in *; do
  if [ -f "$f" ]; then
    if [ ! -L "${HOME}/.${f}" ]; then
      ln -s ${PWD}/$f ${HOME}/.$f
    fi
  fi
done

cd ..
# link zsh theme
zsh_folder="${HOME}/.oh-my-zsh/custom"
if [ -d "${zsh_folder}" ]; then
  if [ ! -L $zsh_folder/themes ]; then
    ln -s  ${PWD}/themes $zsh_folder
  fi
else
  echo "ZSH not installed (Looking for: ${ZSHFOLDER})"
fi
