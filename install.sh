#!/bin/bash

while read -r source target; do
  target="$HOME/$target"
  if [ -d "$target" ] || [ -L "$target" ]; then
    echo "warn: config already exists: $target"
  else
    ln -sn "$(pwd)/$source" "$target"
  fi
done < install.txt
