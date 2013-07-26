for f in .*; do
  if [ -f "$f" ]; then
    ln -s $f ~;
  fi
done
