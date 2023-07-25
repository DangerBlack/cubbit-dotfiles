#!/usr/bin/env bash
set -e

grep -qF -- 'alias cubbit="cd ~/cubbit"' ~/.bashrc || echo 'alias cubbit="cd ~/cubbit"' >> ~/.bashrc
grep -qF -- 'alias cubbit-tilt="cubbit && tilt -f coordinator/Tiltfile"' ~/.bashrc || echo 'alias cubbit-tilt="cubbit && tilt -f coordinator/Tiltfile"' >> ~/.bashrc
grep -qF -- 'alias cup="cubbit-tilt up"' ~/.bashrc || echo 'alias cup="cubbit-tilt up"' >> ~/.bashrc
grep -qF -- 'alias cdown="cubbit-tilt down"' ~/.bashrc || echo 'alias cdown="cubbit-tilt down"' >> ~/.bashrc

source ~/.bashrc
