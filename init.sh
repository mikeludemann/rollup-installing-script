#!/bin/bash

echo "Checking rollup"

if rollup -v > /dev/null; then
  echo "rollup is already installed."
else
  echo "installing rollup"
  if node -v > /dev/null; then
    if npm -v > /dev/null; then
      echo "installing rollup - global"
      npm install -g rollup
    else
      echo "npm is not installed"
    fi
  else
    echo "node is not installed"
  fi
fi