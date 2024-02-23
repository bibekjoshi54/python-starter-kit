#!/bin/bash

set -e
set -x


install_precommit() {
  if [ -d .git ]; then
    poetry run pre-commit install
  else
    echo "Skipping the installing of pre-commit hook as git is not installed. You can run it later using 'poetry run pre-commit install' command."
  fi
}

echo "Setting up project"
rm -rf .virtualenvs
poetry config --list
poetry env use $(which python)
poetry install -vv --no-interaction --no-ansi --with development,test
install_precommit
