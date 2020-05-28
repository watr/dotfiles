#!/bin/bash

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE:-$0}")"; pwd)"
dot_dir="$(cd "${script_dir}"; cd ..; pwd)"

command ln -snf "${dot_dir}/.zshrc" "${HOME}"