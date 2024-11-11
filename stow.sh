#!/bin/bash

for f in $(find . -type f ! -name "stow.sh"); do 
  path="$HOME/${f:2}"
  # path=$f
  mv $path  ${path}.stowed  
done

