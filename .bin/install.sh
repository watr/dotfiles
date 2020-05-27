script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
dot_dir="$(cd ../ && pwd -P)"

command ln -snf "${dot_dir}/.zshrc" "${HOME}"