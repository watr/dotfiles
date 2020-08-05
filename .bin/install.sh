#!/bin/bash

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE:-$0}")"; pwd)"
dot_dir="$(cd "${script_dir}"; cd ..; pwd)"

command ln -snf "${dot_dir}/.zshrc" "${HOME}"

command ln -snf "${dot_dir}/.gitignore_global" "${HOME}"
git config --global core.excludesfile ~/.gitignore_global