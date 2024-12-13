#!/usr/bin/env bash
set -e

grep -qF -- "alias ttd='tilt -f coordinator/Tiltfile down" ~/.bashrc || echo "alias ttd='tilt -f coordinator/Tiltfile down'"  >> ~/.bashrc
grep -qF -- "alias ttu='tilt -f coordinator/Tiltfile up'" ~/.bashrc || echo "alias ttu='tilt -f coordinator/Tiltfile up'"  >> ~/.bashrc
grep -qF -- "alias gaz='bazel run //:gazelle'" ~/.bashrc || echo "alias gaz='bazel run //:gazelle'"  >> ~/.bashrc
grep -qF -- 'eval "$(starship init bash)"' ~/.bashrc || echo 'eval "$(starship init bash)"' >> ~/.bashrc

# Install starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)" -y -f

mkdir -p /home/coder/.config/
echo -e "scan_timeout = 100\ncommand_timeout = 500\n\n[nodejs]\nformat = \"[\$version](bold green) \"\n\n[git_branch]\nsymbol = \"🌱 \"\n\n[git_status]\nconflicted = \"��\"\nahead = \"⇡\${count}\"\nbehind = \"⇣\${count}\"\ndiverged = \"⇕⇡\${ahead_count}⇣\${behind_count}\"\nuntracked = \"🤷‍\"\nstashed = \"📦\"\nmodified = \"📝\"\nstaged = '[++\(\$count\)](green)'\nrenamed = \"👅\"\ndeleted = \"🗑\"" > /home/coder/.config/starship.toml

sudo apt install -y screen

source ~/.bashrc
