#!/bin/sh
# Installs the fonts the FinalBrief reel look needs (Poppins, Inter, DejaVu Sans Mono) from this repo. Run from the repo root.
set -e
D="$HOME/.fonts"; mkdir -p "$D"
cp "$(dirname "$0")"/fonts/* "$D"/
fc-cache -f >/dev/null 2>&1 || true
fc-list | grep -i -E "poppins|inter|dejavu sans mono" | head -3
