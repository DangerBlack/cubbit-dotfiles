#!/usr/bin/env bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Extensions
code-server --install-extension Tyriar.sort-lines --force
code-server --install-extension dbaeumer.vscode-eslint --force
code-server --install-extension eamodio.gitlens --force
code-server --install-extension earshinov.filter-lines --force
code-server --install-extension golang.go --force
code-server --install-extension mhutchie.git-graph --force
code-server --install-extension ms-vscode.vscode-typescript-tslint-plugin --force
code-server --install-extension naumovs.color-highlight --force
code-server --install-extension rangav.vscode-thunder-client --force
code-server --install-extension redhat.vscode-yaml --force
code-server --install-extension richie5um2.vscode-sort-json --force
code-server --install-extension rust-lang.rust-analyzer --force
code-server --install-extension vscode-icons-team.vscode-icons --force
code-server --install-extension wayou.vscode-todo-highlight --force
code-server --install-extension xaver.clang-format --force
code-server --install-extension zxh404.vscode-proto3 --force

# Settings

mkdir -p ${HOME}/.local/share/code-server/User

cp ${SCRIPT_DIR}/settings.json ${HOME}/.local/share/code-server/User/settings.json
cp ${SCRIPT_DIR}/keybindings.json ${HOME}/.local/share/code-server/User/keybindings.json
