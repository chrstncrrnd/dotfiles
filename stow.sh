#!/bin/bash

for f in $(find . -type f ! -name "stow.sh"); do 
  path="$HOME/${f:2}"
  # path=$f
  if [ -f $path ] && [ ! -f ${path}.stowed ]; then
    mv $path  ${path}.stowed  
  fi 
done

