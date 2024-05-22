#!/usr/bin/env bash
set -e

grep -qF -- "alias ttd='tilt -f coordinator/Tiltfile down" ~/.bashrc || echo "alias ttd='tilt -f coordinator/Tiltfile down'"  >> ~/.bashrc
grep -qF -- "alias ttu='tilt -f coordinator/Tiltfile up'" ~/.bashrc || echo "alias ttu='tilt -f coordinator/Tiltfile up'"  >> ~/.bashrc
grep -qF -- "alias gaz='bazel run //:gazelle'" ~/.bashrc || echo "alias gaz='bazel run //:gazelle'"  >> ~/.bashrc
grep -qF -- 'eval "$(starship init bash)"' ~/.bashrc || echo 'eval "$(starship init bash)"' >> ~/.bashrc

# Install starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)" -y -f

mkdir -p /home/coder/.config/


source ~/.bashrc
