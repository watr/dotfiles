#!/bin/bash

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE:-$0}")"; pwd)"
dot_dir="$(cd "${script_dir}"; cd ..; pwd)"

command ln -snf "${dot_dir}/.zshrc" "${HOME}"

# git directory
git_dir="${HOME}/.config/git"
if [ ! -d "${git_dir}" ]; then
    mkdir -p "${git_dir}"
fi
command ln -snf "${dot_dir}/.gitignore_global" "${git_dir}/ignore"
