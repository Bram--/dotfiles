for f in .*; do
  if [ -f "$f" ]; then
  ln -s ${PWD}/$f ~
  fi
done
