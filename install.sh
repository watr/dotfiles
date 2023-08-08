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

default_branch="$(git config --list --global  2>/dev/null | sed -nr 's/(^init.defaultBranch=)(.*)$/\2/pi' )"

if [ -z "${default_branch}" ]; then
git config --global init.defaultBranch main
fi
