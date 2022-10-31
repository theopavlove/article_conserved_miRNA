#!/bin/bash

echo .env > .gitignore
echo .ipynb_checkpoints >> .gitignore
echo .vscode >> .gitignore

find * -path .env -prune -o -size +100M >> .gitignore

cat .gitignore